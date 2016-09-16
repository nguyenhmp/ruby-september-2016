class CommentsController < ApplicationController
  def index
  	@comments = Comment.all.joins(:product).select("*")
  end

  def create
  	product = Product.find(params[:id])
  	Comment.create(comment: params[:comment], product: product)
  	redirect_to "/products/#{params[:id]}"
  end
end
