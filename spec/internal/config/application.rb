# frozen_string_literal: true

require File.expand_path("boot", __dir__)

Bundler.require(*Rails.groups)

require "sprockets/railtie"

class Application < ::Rails::Application
  # Enable the asset pipeline
  config.assets.enabled = true

  # Version of your assets, change this if you want to expire all your assets
  config.assets.version = "1.0"
end
