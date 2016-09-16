class NumbersController < ApplicationController
  def index
  	generate_random_number if !session[:random].present?
  end
  
  def create
  	flash[:message] = 'You got it'
  	flash[:status] = false

  	if params[:number].present?
  		input_number = params[:number].to_i
  		if input_number > session[:random]
  			flash[:message] = 'Too High'
  		elsif input_number < session[:random]
  			flash[:message] = 'Too Low'
  		else
  			generate_random_number
  			flash[:status] = true
  		end
  	else
  		flash[:message] = "# please"
  	end
        redirect_to action: 'index'
    end

    private
    def generate_random_number
    	session[:random] = rand(1..100)
    end



end
