# frozen_string_literal: true

Bundler.require :default, :test

require "rails/all"
require "combustion"
require "knockout-assets"
require "pry-byebug"

Combustion.initialize! :action_controller, :action_view, :sprockets

require "rspec/rails"
