class StudentsController < ApplicationController
  def index
  	if session[:counter]
  		session[:counter] = session[:counter] + 1
  	else
  		session[:counter] = 0
  	end
  	@students = Student.all 
  end

  def create
  	Student.create(name:params[:name], location:params[:location], language:params[:language], comment:params[:comment])
    redirect_to '/students/show'
  end

  def show
  	@student = Student.all
  end
end
