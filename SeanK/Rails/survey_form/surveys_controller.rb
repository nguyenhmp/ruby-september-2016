class SurveysController < ApplicationController
  def index
  end

  def dataret
  	if session[:number] == nil
      session[:number] = 1
    else 
      session[:number] += 1
    end
    session[:name] = params[:name]
    session[:language] = params[:language]
    session[:location] = params[:location]
    session[:comment] = params[:comment]

  	redirect_to '/result'
  end

  def result
  end
end
