class ProductsController < ApplicationController

  def new
    @create_product = Product.new
  end

  def create
    @create_product = Product.create(post_params)
    if @create_product.valid?
      redirect_to root_path
    else
      render 'new'
    end
  end

  def add_to_cart


  end

  private

  def post_params
    params.require(:product_form).permit(:title, :image_url, :price, :brand_id, :quantity)
  end

end
