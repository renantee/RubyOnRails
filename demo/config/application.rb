require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Demo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Active Job adapter
    config.active_job.queue_adapter = :sidekiq

    # Action Cable to listen for WebSocket requests
    config.action_cable.mount_path = '/websocket'

    # Set time zone to "Hong Kong"
    #config.time_zone = 'Hong Kong'
    config.time_zone = 'Mountain Time (US & Canada)'

    config.generators do |g|
      g.orm             :active_record
      g.template_engine :erb
      g.test_framework  :test_unit, fixture: false
      g.stylesheets     false
      g.helper          :my_helper
    end
  end
end
