require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Portfolio
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.paths << Rails.root.join("vendor", "assets", "fonts")
    config.assets.paths << Rails.root.join("vendor", "assets", "portfolio")
    config.assets.paths << Rails.root.join("resumepdf")

    config.assets.precompile += ['resume.css', 'resumepdf.css', 'photo_cv.png']

    I18n.available_locales = [:fr, :en, :ja]
    I18n.default_locale = :fr
  end
end
