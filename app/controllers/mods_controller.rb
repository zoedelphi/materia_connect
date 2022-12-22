class ModsController < ApplicationController
  before_action :verify_logged_in, only: %i[new create edit update destroy]
  before_action :verify_user_owns_mod, only: %i[edit update destroy]

  def index
    @mods = public_mods.order(created_at: :desc)
  end

  def show
    @mod = Mod.find(params[:id])
    return if @mod.public? || @mod.user == current_user

    redirect_to mods_path, alert: t('mod_permission_denied')
  end

  def new
    @mod = Mod.new
  end

  def create
    @mod = Mod.new(mod_params)

    if @mod.save
      redirect_to @mod
    else
      render :new, status: :unprocessable_entity, error: @mod.errors
    end
  end

  def edit
    @mod = Mod.find(params[:id])
  end

  def update
    @mod = Mod.find(params[:id])

    if @mod.update(mod_params)
      redirect_to @mod
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @mod = Mod.find(params[:id])
    @mod.destroy

    redirect_to mods_path, status: :see_other
  end

  def search
    @query = params[:query]
    @mods = Mod.search(@query)&.where(unlisted: false)
  end

  def with_tag
    @tag = params[:tag]
    @mods = tagged_with(@tag).order(created_at: :desc)
    render :index
  end

  private

  def public_mods = Mod.where(unlisted: false)

  def mod_params = params.require(:mod).permit(:title,
                                               :description,
                                               :tag_string,
                                               :download_url,
                                               :nsfw,
                                               :user_id,
                                               :unlisted,
                                               :premium,
                                               images: [])

  def tagged_with(tag) = public_mods.where("'{#{tag}}' <@ tags")

  def verify_user_owns_mod
    return if Mod.find(params[:id]).user == current_user

    redirect_to mods_path, alert: t('mod_permission_denied')
  end
end
