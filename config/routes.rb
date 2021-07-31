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

  devise_scope :users do
    get "edit", to: "users/registrations#edit"
  end

  resources :confirmations do
    member do
      get 'cancel'
    end
  end

end
