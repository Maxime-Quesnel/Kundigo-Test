Rails.application.routes.draw do
  root "brands#index"
  resources :brands
  devise_for :users
end
