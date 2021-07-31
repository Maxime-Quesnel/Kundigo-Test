class RegistrationsController < Devise::RegistrationsController
  def edit
    super
    @current_user = current_user.id
    Cart.create(confirm: nil, users_id: @current_user)
  end
end