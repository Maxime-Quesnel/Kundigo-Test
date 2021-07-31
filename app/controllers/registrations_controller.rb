class RegistrationsController < Devise::RegistrationsController
  def create
    super
    @current_user = current_user.id
    Cart.create(confirm: nil, users_id: @current_user)
  end
end