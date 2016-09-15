class NumbersController < ApplicationController
  def index
      session[:number] = rand(1..100) unless session.has_key? "number"
  end

  def check
      guess = params[:guess].to_i
      if guess == session[:number]
          flash.notice = "Correct! #{session[:number]} was the number!"
      elsif guess < session[:number]
          flash.alert = "Too low!"
      elsif guess > session[:number]
          flash.alert = "Too high!"
      end
      redirect_to root_path
  end

  def reset
      session.clear
      redirect_to root_path
  end
end
