class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @comments = Product.find(params[:id]).comments
  end

  def new
    @categories = Category.all
  end

  def create
    category = Category.find(product_params[:category])
    product = Product.new(name:product_params[:name], description:product_params[:description], price:product_params[:price], category:category,)
    if product.save
      redirect_to '/products'
    else
      flash[:errors] = product.errors.full_messages
      redirect_to '/products/new'
    end
  end

  def edit
    @categories = Category.all
    @product = Product.find(params[:id])
  end

  def update
    category = Category.find(product_params[:category])
    Product.update(params[:id], name: product_params[:name], description: product_params[:description], price: product_params[:price], category: category)
    redirect_to "/products"
  end

  def destroy
    Product.destroy(params[:id])
    redirect_to '/products'
  end

  private
  def product_params
    params.require(:product).permit(:category, :name, :description, :price)
  end

end
