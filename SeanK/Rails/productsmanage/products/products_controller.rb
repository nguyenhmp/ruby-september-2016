class ProductsController < ApplicationController
  def index
    puts Product.all.joins(:category)
    @products = Product.all.joins(:category).select("*,products.name as product, products.id as product_id") 
  end

  def show
    @product = Product.find(params[:id])
    @category = Category.find(@product.category)
    @comments = Product.find(params[:id]).comments
  end

  def new
    @categories = Category.all
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def create
    category = Category.find(params[:product][:category])
    Product.create(name: params[:product][:name], description: params[:product][:description], price: params[:product][:price], category: category )
    redirect_to '/'
  end

  def update
    category = Category.find(params[:product][:category])
    Product.find(params[:id]).update(name: params[:product][:name], description: params[:product][:description], price: params[:product][:price], category: category )
    redirect_to '/'
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to '/'
  end
  private

end
