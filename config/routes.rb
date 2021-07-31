require 'sidekiq/web'
require 'sidekiq/cron/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  root "brands#index"
  resources :brands
  resources :products
  resources :carts
  resources :cart_products
  resources :buy
  devise_for :users, :controllers => { :registrations => "registrations" }

  resources :confirmations do
    member do
      get 'cancel'
    end
  end

end
