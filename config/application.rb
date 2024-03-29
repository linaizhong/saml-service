require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require 'active_model/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'
# require 'active_record/railtie'
# require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Saml
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those
    # specified here.

    config.sequel.after_connect = proc do
      Sequel::Model.plugin :timestamps, update_on_create: true
      Sequel::Model.plugin :validation_helpers
    end
  end
end
