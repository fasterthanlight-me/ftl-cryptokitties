Rails.application.routes.draw do
  root 'home#index'

  namespace :api, defaults: {format: :json} do
    resources :crypto_kitties, only: [:index, :show]
  end
end
