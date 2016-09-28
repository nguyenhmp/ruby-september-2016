class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index'
  end
  def new
    render 'new'
  end
  def show
    @product = Product.find(params[:id])
    @comments = @product.comments
    render 'show'
  end

  def edit
    @product = Product.find(params[:id])
    render 'edit'
  end

  def create
    Product.create(name:params[:product][:name], description:params[:product][:description], price:params[:product][:price], category:params[:product][:category])
    redirect_to '/'
  end

  def update
    Product.update(params[:id], name:params[:product][:name], description:params[:product][:description], price:params[:product][:price], category:params[:product][:category])
    redirect_to '/'
  end

  def destroy
    Product.delete(params[:id])
    redirect_to '/'
  end
  def create_comment
    puts "iiiiiiiiiiiiiiiiii"
    Product.find(params[:id]).comments.create(content:params[:comment][:content])
    redirect_to "/products/show/#{params[:id]}"
  end
  def comment
    @comments = Comment.all
    render 'comments'
  end
end
