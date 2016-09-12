class GuessesController < ApplicationController
  Random.new
  def index
  	if session[:number] == nil
  		session[:number] = rand(1..100)
  	end
  	if flash[:goodguess] == nil
  		flash[:goodguess] = false
  	end
  end
  def guess
  	if params[:guess].to_i > session[:number]
  		flash[:badguess] = true
  		flash[:goodguess] =false
  		flash[:message] = "Too high"
  	elsif params[:guess].to_i < session[:number]
  		flash[:badguess] = true
  		flash[:goodguess] =false
  		flash[:message] = "Too low"
  	else
  		flash[:badguess] = false
  		flash[:goodguess] = true
  		flash[:message] = "#{session[:number]} was the number!"
  	end
  	redirect_to '/'
  end 
  def reset
  	session[:number] = nil
  	redirect_to '/'
  end
end
