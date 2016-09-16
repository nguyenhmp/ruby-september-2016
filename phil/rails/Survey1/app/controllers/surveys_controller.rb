class SurveysController < ApplicationController
  def main
      @survey = Survey.new
  end

  def create
      @survey = Survey.new(survey_params)
      if @survey.save
          session[:count] = 0 unless session.has_key? "count"
          session[:count] += 1
          redirect_to result_path, notice: "Thank you for completing this survey!  You have submitted this survey #{session[:count]} times"
      else
          redirect_to root_path, alert: @survey.errors.full_messages
      end
  end

  def result
      @survey = Survey.last
  end

  private
  def survey_params
      params.require(:survey).permit(:username, :location, :language, :comment)
  end
end
