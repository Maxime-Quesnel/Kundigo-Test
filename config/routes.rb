Rails.application.routes.draw do
  root "brands#index"
  resources :brands
  resources :products
  resources :carts
  resources :cart_products
  resources :buy

=begin
  get 'command/:id/cancel' => 'Cancel#confirm'
=end

  devise_for :users
end
