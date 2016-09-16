class GameController < ApplicationController
	def index
		session[:rando]=rand(1..100)
		puts session[:rando]
	end
	def guess
		@guess=params[:guess].to_i
		flash[:failure]='Too high!' if @guess>session[:rando]
		flash[:failure]='Too low!' if @guess<session[:rando]
		flash[:success]="#{session[:rando]} was the number!" if @guess==session[:rando]
		redirect_to action: 'index'
	end
	def retry
		session.clear
		redirect_to action: 'index'
	end
end
