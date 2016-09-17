class SurveyFormController < ApplicationController
  def index
    if !session[:views]
      session[:views] = 0
    end
  end

  def add
    session[:views] += 1
    session[:result] = params[:survey_form]
    flash[:success] = "submitted form..... #{session[:views]} times!"

    redirect_to "/survey_form/result"
  end

  def result

    @success_message = flash[:success]
    @result = session[:result]
  end
end
