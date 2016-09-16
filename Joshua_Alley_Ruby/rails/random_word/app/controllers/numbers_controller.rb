class NumbersController < ApplicationController
  def show
  	session[:word]
	session[:count]
  end

  def generate
  	session[:word] = (0...8).map { (65 + rand(26)).chr }.join
  	session[:count] = session[:count] + 1
  	redirect_to '/'
  end
end
