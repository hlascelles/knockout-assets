# frozen_string_literal: true

Rails.application.routes.draw do
  get "/knockout-assets", to: "application#show"
end
