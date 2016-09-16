class ComputersController < ApplicationController
	@@count=0
	def index
		render text: 'What do you want me to say?'
	end

	def hello
		render text: 'Hello Coding Dojo!'
	end

	def say
		render text: 'Saying Hello'
	end

	def joe
		render text: 'Say Hello, Joe!'
	end

	def michael
		redirect_to '/say/hello/joe/'
	end

	def times
		session[:count]= session[:count] + 1
		render text: session[:count] 
	end
	def restart
		session[:count]= 0
		render text: 'Destroyed the Session!'

	end

end
