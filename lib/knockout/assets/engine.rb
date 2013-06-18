require 'rails/engine'
require_relative '../../../app/helpers/knockout_assets'

module KnockoutAssets
  class Engine < ::Rails::Engine
  end
end

ActiveSupport.on_load :action_controller do
  helper KnockoutAssets
end