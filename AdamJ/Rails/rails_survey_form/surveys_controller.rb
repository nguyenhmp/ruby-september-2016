class SurveysController < ApplicationController
	def index
		if session[:times]==nil
			session[:times]=0
		end
	end
	def survey_process
		session[:result]=params[:survey]
		redirect_to '/result'
	end
	def result
		session[:times]+=1
		flash[:success]="Thanks for submitting this form!  You have submitted this form #{session[:times]} times now"
	end
end
