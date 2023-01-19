require 'rails/engine'
require 'memery'

module KnockoutAssets
  class Engine < ::Rails::Engine
    config.to_prepare do
      ActiveSupport.on_load :action_controller do
        include KnockoutAssetsHelper
        helper_method :knockout_assets
      end
    end
  end
end
