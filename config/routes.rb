Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :crypto_kitties, only: [:index, :show]
  end
end
