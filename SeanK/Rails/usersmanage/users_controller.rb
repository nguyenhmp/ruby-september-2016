class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def next
		redirect_to '/users'
	end
	def new
		render 'new'
	end
	def show 
		@user = User.find(params[:id])
		render 'show'
	end
	def create
		User.create(user_params)
		redirect_to '/'
	end
	def edit
		@user = User.find(params[:id])
		
	end
	def update
		User.find(params[:id]).update(user_params)
		redirect_to '/'
	end
	def delete
		User.find(params[:id]).destroy
		redirect_to '/'
	end
	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email_address, :password)
		end
end
