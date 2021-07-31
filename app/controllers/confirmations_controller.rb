require 'benchmark'

class ConfirmationsController < ApplicationController

  def cancel
    @find_order = Order.where(token: params[:id])

    if @find_order[0].confirm == true
      @find_order[0].confirm = false
      @find_order[0].save
      @product_cart = CartProduct.where(cart_id: @find_order[0].cart_id)

      @product_cart.each do |product|
        @product_find = Product.find(product.product_id)
        @product_find.quantity = @product_find.quantity + 1
        @product_find.save

        CartProduct.find(product.id).destroy
      end
    else
      flash.alert = "The order has already been cancelled"
      redirect_to root_path
    end
  end
end