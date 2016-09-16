class NumbersController < ApplicationController
  def new
  	# session[:number] = nil
  	if session[:number] == nil
		session[:number] = 1 + Random.rand(100)
	end 
  	puts session[:number]
  	
  end

  def guess
  	@guess = params[:guess][:number].to_i
  	@number = session[:number].to_i
  	puts @guess
  	puts session[:number]

  	if @guess > 100
  		flash[:error] = "You must submit a number between 1 and 100!"
  		redirect_to "/"
  		return
  	else
  		if @guess < @number
  			flash[:low] = "Your number is too low!"
  			redirect_to "/"
  			return
  		end
  		if @guess > @number
  			flash[:high] = "Your number is too high!"
  			redirect_to "/"
  			return
  		end
  		if @guess = @number
  			flash[:success] = "#{@number} was the number!"
  			redirect_to "/"
  			return
  		end
  	end
  	puts @guess
  	puts session[:number]
  end

  def reset
  	session[:number] = nil
  	session[:number] = 1 + Random.rand(100)
  	redirect_to "/"
  end
end
