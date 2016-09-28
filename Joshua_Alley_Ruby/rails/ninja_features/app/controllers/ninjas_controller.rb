class NinjasController < ApplicationController
  def index
  end

  def create
  	ninja = Ninja.new(ninja_name:params[:ninja][:name], ninja_description:params[:ninja][:description])
  	if ninja.save
  		flash[:success] = "You have successfully submitted a new ninja!"
  		flash[:error]= nil
 		redirect_to '/success'
  	else
  		flash[:error] = "You must provide a name and description to add a ninja."
  		redirect_to '/'
  	end
  end

  def success
  end
end

