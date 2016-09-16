class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
      @users = User.all
  end

  def new
  end

  def create
      @user = User.new(user_params)
      if @user.save
          redirect_to users_show_path(@user[:id]), notice: "Successfully created new user!"
      else
          redirect_to users_new_path, alert: @user.errors.full_messages
      end
  end

  def show
  end

  def edit
  end

  def update
      if @user.update(user_params)
          redirect_to users_show_path(@user[:id]), notice: "Successfully updated user ##{@user[:id]}!"
      else
          redirect_to users_edit_path(@user[:id]), alert: @user.errors.full_messages
      end
  end

  def destroy
      @user.destroy
      redirect_to users_path, notice: "Successfully destroyed user ##{@user.id}!"
  end

  private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
  def set_user
      @user = User.find(params[:id])
  end
end
