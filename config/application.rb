require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Template
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.generators do |g|
      g.assets false
      g.helper false
      g.template_engine = :erb
      g.test_framework :rspec, view_specs: false, routing_specs: false
    end
    config.sass.preferrd_syntax = :sass
    config.sass.syntax = :sass

    config.i18n.default_locale = :ja

    config.time_zone = 'Tokyo'
  end
end
