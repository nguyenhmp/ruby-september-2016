class NumbersController < ApplicationController
  def index
  	if ! session[:random_num] 
  		session[:random_num] = rand(1..100)
  		puts session[:random_num]
  		puts("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<")
  	end  
  end

  def create
  	# Default values of flash
		flash[:message] = 'You got it!'
		flash[:status] = false

		# Check if a number was submitted
		if params[:number].present?
			input_number = params[:number].to_i

			if input_number > session[:random] 
				flash[:message] = 'Too High'
			elsif input_number < session[:random]
				flash[:message] = 'Too Low'
			else
				session[:random] = rand(1..100)  
				flash[:status] = true
				
			end
		else
			flash[:message] = 'Please enter a number'
		end 
  	
  	redirect_to '/numbers/index'
  end

end 
