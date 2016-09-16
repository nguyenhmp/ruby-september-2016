class WordsController < ApplicationController
	def index
		if session[:attempt]==nil
			session[:attempt]=0
		end
	end
	def generate
		session[:attempt]+=1
		session[:random_word]=('a'..'z').to_a.shuffle[0,12].join
		redirect_to action: 'index'
	end
end
