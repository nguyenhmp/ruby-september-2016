class CommentsController < ApplicationController
    def show
        @comments = Comment.includes(:product)
    end

    def create
        product = Product.find(params[:id])
        comment = Comment.new(comment:comment_params[:text], product: product)
        if comment.save
            redirect_to "/products/#{params[:id]}"
        else
            flash[:errors] = comment.errors.full_messages
            redirect_to "/products/#{params[:id]}"
        end
    end
    private
    def comment_params
        params.require(:comment).permit(:text)
    end
end
