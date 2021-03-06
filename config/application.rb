require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatApplication
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.time_zone = 'Tokyo'
   
    config.load_defaults 5.2
    config.i18n.available_locales=[:en,:ja]
    config.i18n.default_locale = :en

    #to log message format
    config.autoload_paths << Rails.root.join("lib")
    config.eager_load_paths << Rails.root.join("lib")
    # Rails.logger = Logger.new(STDOUT)
    # Rails.logger.level = Logger::DEBUG
    # Rails.logger.datetime_format = "%Y-%m-%d %H:%M:%S"
    # config.logger = ActiveSupport::Logger.new("log/#{Rails.env}.log")
    
    # Rails.logger = Logger.new(STDOUT)
    # Rails.logger.level = Logger::DEBUG
    # Rails.logger.datetime_format = "%Y-%m-%d %H:%M:%S"
    # config.logger = ActiveSupport::Logger.new("log/#{Rails.env}.log")

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
