class UsersController < ApplicationController
  def index
  	render json: User.all
  end

  def show
  	render json: User.find(params[:id])
  end

  def new

  end

  def create
  	User.create(name: 'Sean')
  	redirect_to '/users'
  end

  def total
  	total = User.all.length
  	render text: "The total numbers of users is #{total}"
  end

  def edit
  	@user = User.find(params[:id])
  	puts @user
  	render 'edit'
  end
end
