class NumberController < ApplicationController
  def index
    session[:random_number] = rand(1..100) if !session[:random_number].present?
    # ithnk thats it
  end
  def newnum
    # if params[:num] == session[:number]
    #   @correct = "you are correct"
    # end
    # else
    #   @tryagain = 'try again'
    # end

    flash[:message] = "correct"
    flash[:status] = false

    if params[:num].present?
      input_num = params[:num].to_i
      # this name num into integer
        if input_num > session[:random_number]
          flash[:message] = "too high "
        elsif input_num < session[:random_number]
          flash[:message] = "too low"
        else
          flash[:status]
        end
    else
      flash[:message] = "please enter number"
    end
    redirect_to action: 'index'
  end
end
