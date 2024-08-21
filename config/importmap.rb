# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true


# pin "@stimulus-components/carousel", to: "@stimulus-components--carousel.js" # @6.0.0
# pin "swiper/bundle", to: "swiper--bundle.js" # @11.1.9
# pin "swiper" # @11.1.9
