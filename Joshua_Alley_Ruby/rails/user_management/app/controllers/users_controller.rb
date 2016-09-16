class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    render 'new'
  end
  def show
    @user = User.find(params[:id].to_i)
    render 'show'
  end
  def create
    User.create(first_name:params[:user][:first_name], last_name:params[:user][:last_name], email:params[:user][:email], password:params[:user][:password])
    redirect_to '/'
  end
  def edit
    @user = User.find(params[:id].to_i)
  end
  def update
    User.update(params[:id], first_name:params[:user][:first_name], last_name:params[:user][:last_name], email:params[:user][:email], password:params[:user][:password])
    redirect_to '/'
  end

  def destroy
    User.delete(params[:id].to_i)
    redirect_to '/'
  end
end
