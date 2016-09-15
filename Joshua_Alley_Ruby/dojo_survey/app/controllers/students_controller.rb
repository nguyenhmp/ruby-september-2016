class StudentsController < ApplicationController
  def new
  	render 'new'
  end

  def create
  	Student.create(name:params[:student][:name], location:params[:student][:location], language:params[:student][:language], comment:params[:student][:comment])
  	
  	puts @count
  	puts Student.last.name
  	puts Student.last.location
  	puts Student.last.language
  	puts Student.last.comment
  	redirect_to "/students/finish"

  end

  def finish
  	@count = Student.count
  	@student = Student.last
  end
end
