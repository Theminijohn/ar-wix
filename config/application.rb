require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ArWix
  class Application < Rails::Application

    config.middleware.use Wix::Apps::SignedInstanceMiddleware,
        secured_paths: ['/yours', '/paths'], secret_key: '4f3703f5-338d-4231-be1b-a684cf65a1a3'

  end
end
