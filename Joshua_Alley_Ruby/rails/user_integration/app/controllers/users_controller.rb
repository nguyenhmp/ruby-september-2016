class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
    render 'new'
  end

  def create
    @user=User.create( name: (0...8).map { (65 + rand(26)).chr }.join)

    redirect_to '/users/index/'
  end

  def find
    render json: User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    render 'edit'
  end

  def total
    @count = 0
    for user in User.all
      @count = @count + 1
    end
    render text: @count
  end
end
