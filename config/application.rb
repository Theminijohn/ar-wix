require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"


Bundler.require(*Rails.groups)

module ArWix
  class Application < Rails::Application

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    # Wix
    config.middleware.use Wix::Apps::SignedInstanceMiddleware,
        secured_paths: ['/yours', '/paths'], secret_key: '4f3703f5-338d-4231-be1b-a684cf65a1a3'

  end
end
