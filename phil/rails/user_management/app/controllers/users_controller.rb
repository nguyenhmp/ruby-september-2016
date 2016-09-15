class UsersController < ApplicationController
  def index
      @users = User.all
  end

  def new
  end

  def create
      @user = User.new(user_params)
      if @user.save
          redirect_to users_path, notice: "Successfully created new user!"
      else
          redirect_to users_new_path, alert: @user.errors.full_messages
      end
  end

  def show
  end

  def edit
  end

  private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
