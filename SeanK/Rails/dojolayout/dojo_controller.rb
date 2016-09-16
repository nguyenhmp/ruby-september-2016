class DojoController < ApplicationController
	def index
	end
	def seattle
	end
	def home
		puts params
		render json: params
	end
end
