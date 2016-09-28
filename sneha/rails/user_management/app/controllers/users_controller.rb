class UsersController < ApplicationController
	def index
	  	@users = User.all 
	  end

	  def new
	  	@users = User.all 
	  end

	  def create
	  	@user = User.create(first_name:params[:first_name], last_name:params[:last_name], email_address:params[:email_address], password:params[:password])
	  	if @user.errors.any?
	        flash[:error] = @user.errors.full_messages
	        redirect_to '/users/new'
	    else 
	  	redirect_to '/users/index'
	  	end 
	  end

	  def show
	  	@user = User.find(params[:id])
	  end 

	  def edit
   		@user = User.find(params[:id])
  	  end

  	  def update #DOES NOT PROPERLY WORK / NEED TO FIX VALIDATIONS
  	 #  	@user_update = User.find(params[:id]).update(first_name:params[:first_name], last_name:params[:last_name], email_address:params[:email_address], password:params[:password])
  	 #  		if @user_update.errors.any?
  	 #  			flash[:error] = @user.errors.full_messages
  	 #  			redirect_to '/users/#{@user.id}/edit'
  	 #  		else
  	 #  		redirect_to '/users/index'
	  	# end 
  	 #  end


  	 @user = User.find(params[:id])
  	 if @user.update(first_name:params[:first_name], last_name:params[:last_name], email_address:params[:email_address], password:params[:password])
  	 	redirect_to 'users/index'
  	 else
  	 	flash[:errors] = @user.errors.full_messages
  	 	redirect_to 'users/#{@user.id}/edit'
	  	end 
  	  end

  	  def destroy
  	  	@user = User.find(params[:id]).destroy
  	  	redirect_to '/users/index'
  	  end 

end
