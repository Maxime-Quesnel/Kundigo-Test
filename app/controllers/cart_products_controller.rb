class CartProductsController < ApplicationController

  def create
    @product_find = Product.find(params[:id_product])

    if @product_find.quantity == 0
      flash.alert = "Plus de stock disponible pour l'article #{@product_find.title}"
      redirect_to root_path
    else
      @product_find.quantity = @product_find.quantity - 1
      @product_find.save

      @current_user = current_user.id
      @get_cart_user_id = Cart.where(users_id: @current_user)
      CartProduct.create(product_id: params[:id_product], cart_id: @get_cart_user_id[0].id)
      redirect_to root_path
      flash.notice = "Added to cart !"
    end
  end

end