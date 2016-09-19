class UsersController < ApplicationController
  def index
    @User = User.all
  end

  def create
    User.create(first_name:params[:first_name], last_name:params[:last_name], email_address:params[:email], password:params[:password])
    redirect_to '/'

  end
end
