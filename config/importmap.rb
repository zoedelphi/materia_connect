# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@carbon/web-components/dist/button.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/button.min.js"
pin "@carbon/web-components/dist/form.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/form.min.js"
pin "@carbon/web-components/dist/input.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/input.min.js"
pin "@carbon/web-components/dist/link.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/link.min.js"
pin "@carbon/web-components/dist/modal.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/modal.min.js"
pin "@carbon/web-components/dist/file-uploader.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/file-uploader.min.js"
pin "@carbon/web-components/dist/dropdown.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/dropdown.min.js"
pin "@carbon/web-components/dist/checkbox.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/checkbox.min.js"
pin "@carbon/web-components/dist/pagination.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/pagination.min.js"
pin "@carbon/web-components/dist/number-input.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/number-input.min.js"
pin "@carbon/web-components/dist/search.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/search.min.js"
pin "@carbon/web-components/dist/ui-shell.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/ui-shell.min.js"
pin "@carbon/web-components/dist/toggle.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/toggle.min.js"
pin "@carbon/web-components/dist/tooltip.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/tooltip.min.js"
pin "@carbon/web-components/dist/tag.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/tag.min.js"
pin "@carbon/web-components/dist/textarea.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/textarea.min.js"
pin "@carbon/web-components/dist/notification.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/notification.min.js"
pin "@carbon/web-components/dist/list.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/list.min.js"
pin "@carbon/web-components/dist/tile.min.js", to: "https://cdn.jsdelivr.net/npm/@carbon/web-components@1.22.0/dist/tile.min.js"
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.2.1/dist/stimulus.js"
pin "stimulus-carousel", to: "https://ga.jspm.io/npm:stimulus-carousel@4.0.0/dist/stimulus-carousel.es.js"
pin "dom7", to: "https://ga.jspm.io/npm:dom7@4.0.4/dom7.esm.js"
pin "ssr-window", to: "https://ga.jspm.io/npm:ssr-window@4.0.2/ssr-window.esm.js"
pin "swiper/bundle", to: "https://ga.jspm.io/npm:swiper@7.4.1/swiper-bundle.esm.js"
