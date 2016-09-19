class NumbersController < ApplicationController
  def index
  	if session[:counter]
  		session[:counter] +=1 
  	else 
  		session[:counter] = 0
  end
  end 

  def create
  	session[:random_word] = Array.new(14).map{|i| i = rand(65..90).chr}.join
  	redirect_to '/numbers/index'
  end

end 
