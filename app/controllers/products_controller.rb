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

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @price_default = @product.price

    post_params = params.require(:product).permit(:title, :image_url, :price, :brand_id, :quantity)
    @product.update(old_price: @price_default)
    @product.update(post_params)
    redirect_to root_path

  end

  private

  def post_params
    params.require(:product_form).permit(:title, :image_url, :price, :brand_id, :quantity)
  end

end
