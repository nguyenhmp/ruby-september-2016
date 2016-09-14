class UsersController < ApplicationController
  def index
  	@user = User.all
  end
  def new
  	
  end
  def create
  	User.create(user_params)
  	redirect_to action: 'index'
  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email_address, :password)
  end
end
