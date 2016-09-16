class ProductsController < ApplicationController
    before_action :get_product, only: [:show, :edit, :update, :destroy]

  def index
      @products = Product.all
  end
  def show
  end
  def new
  end
  def edit
  end

  def create
      @product = Product.new(product_params)
      if @product.save
          redirect_to "/products/#{@product.id}"
      else
          redirect_to "/products/new"
      end
  end

  def update
      if @product.update(product_params)
          redirect_to "/products/#{@product.id}"
      else
          redirect_to "/products/#{@product.id}/edit"
      end
  end

  def destroy
      @product.destroy
      redirect_to "/products"
  end

  private
  def get_product
      @product = Product.find(params[:id])
  end

  def product_params
      params.require(:product).permit(:name, :description, :price)
  end
end
