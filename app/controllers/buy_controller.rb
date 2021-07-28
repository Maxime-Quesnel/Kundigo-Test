class BuyController < ApplicationController

  def create
    @current_user = current_user.email

    UserMailer.confirm_achat(@current_user).deliver_now
    redirect_to root_path
  end

end