class UsersController < ApplicationController
	def index
		@users = User.all
		render json: @users
	end
	def new
	end
	def create
		@user = User.create( name: params[:name])
		redirect_to '/users/'
	end
	def show
		render json: User.find(params[:id])
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		@user = User.update(params[:id], name: params[:name])
		redirect_to '/users/'
	end
	def total
		@users = User.count
		render text: "#{@users}"
	end
end
