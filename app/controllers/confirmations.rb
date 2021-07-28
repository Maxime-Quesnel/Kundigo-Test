class ConfirmationsController < ApplicationController

  def cancel
    @cart = Cart.find(params[:id])
    @cart.confirm = false
    @cart.save
  end

end