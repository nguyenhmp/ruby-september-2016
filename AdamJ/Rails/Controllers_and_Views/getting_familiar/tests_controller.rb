class TestsController < ApplicationController
	def hello
		render text: 'Hello CodingDojo!'
	end

	def sayhello
		render text: 'Saying Hello!'
	end
	
	def sayhellojoe
		render text: 'Saying Hello Joe!' 
	end

	def sayhellomichael
		redirect_to '/say/hello/joe'
	end

	def index
		render text:'What do you want me to say?'
	end

	def times
		if session[:number]==nil
			session[:number]=1
		else
			session[:number]+=1
		end
		render text:"You visited this url #{session[:number]} times"
	end

	def timesrestart
		session.clear
		render text:'Destroyed the session!'
	end
end
