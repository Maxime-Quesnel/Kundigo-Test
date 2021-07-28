Rails.application.routes.draw do
  root "brands#index"
  resources :brands
  resources :products
  devise_for :users
end
