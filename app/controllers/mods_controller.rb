class ModsController < ApplicationController
  def index
    @pagy, @mods = pagy_countless(Mod.order(created_at: :desc), items: 10)

    respond_to do |format|
      format.html # GET
      format.turbo_stream # POST
    end
  end

  def show
    @mod = Mod.find(params[:id])
  end

  def new
    @mod = Mod.new
  end

  def create
    @mod = Mod.new(mod_params)

    if @mod.save
      redirect_to @mod
    else
      render :new, status: :unprocessable_entity
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

  def with_tag
    @tag = params[:tag]
    @mods = tagged_with(@tag)
    render :index
  end

  private
  def mod_params
    params.require(:mod).permit(:title, :description, :tag_string, :download_url, images: [])
  end

  def tagged_with(tag)
    Mod.all.select { |mod| mod.tags.include?(tag) }
  end
end
