class CartsController < ApplicationController

  def show
    @current_user = current_user.id
    @get_cart_user_id = Cart.where(users_id: @current_user)

    @products = CartProduct.where(cart_id: @get_cart_user_id[0].id).where(visible: true)

    @tab = []

    @products.each do |content|
      @find_product = Product.where(id: content.product_id)
      @tab << @find_product
    end

  end

end