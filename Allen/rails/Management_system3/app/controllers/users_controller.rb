class UsersController < ApplicationController
  def index
    @User = User.all
  end

  def create
    User.create(first_name:params[:first_name], last_name:params[:last_name], email_address:params[:email], password:params[:password])
    redirect_to '/'
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.find(params[:id]).update(first_name:params[:first_name], last_name:params[:last_name], email_address:params[:email_address], password:params[:password])
    redirect_to '/'
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to '/'
  end
end
