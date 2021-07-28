class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def create
    @brand = Brand.create(post_params)
    if @brand.valid?
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @brand = Brand.find(params[:id])
    @product_brand_id = Product.where(brand_id: params[:id])
  end

  def new
    @brand = Brand.new
  end

  private

  def post_params
    params.require(:brand).permit(:title, :description, :rating, :image_url)
  end
end
