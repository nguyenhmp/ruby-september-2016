class WordsController < ApplicationController
  def index
  	if session[:number] == nil
  		session[:number] = 1
  	else
  		session[:number] += 1
  	end

  	@randomword = (0...14).map { (65 + rand(26)).chr }.join
  end
end
