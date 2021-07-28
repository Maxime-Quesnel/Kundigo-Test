Rails.application.routes.draw do
  root "brands#index"
  resources :brands
  resources :products
  resources :carts
  resources :cart_products
  resources :buy
  devise_for :users

=begin
  get 'confirmations/:id/cancel' => 'Confirmations#cancel'
=end

end
