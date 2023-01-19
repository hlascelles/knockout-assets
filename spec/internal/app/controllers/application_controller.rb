class ApplicationController < ActionController::Base
  include KnockoutAssets

  def show
    render "show"
  end
end
