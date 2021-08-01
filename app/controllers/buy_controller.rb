class BuyController < ApplicationController

  def create
    @current_user_id = current_user.id
    @current_user = current_user.email

    @cart_id = Cart.where(users_id: @current_user_id)

    @product_cart = CartProduct.where(cart_id: @cart_id[0].id)

    @product_cart.each do |product|
      @product = product
      @product.visible = false
      @product.save
    end

    Order.create(confirm: true, cart_id: @cart_id[0].id)
    @recent_order = Order.where("created_at < ? ", Time.now).where(cart_id: @cart_id[0].id).order('created_at DESC').first

    UserMailer.cancel_command(@current_user, @current_user_id, @recent_order.token).deliver_now
    flash.notice = "Your order has been confirmed"
    redirect_to root_path
  end

end