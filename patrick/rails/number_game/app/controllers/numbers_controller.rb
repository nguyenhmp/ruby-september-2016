class NumbersController < ApplicationController
    def index
        if !session[:number]
            session[:number] = rand(0..100)
        else
            @number = session[:number]
        end
    end
    def guess
        @guess = (params[:user][:guess]).to_i
        if @guess > session[:number]
            flash[:high] = "Too High"
        elsif @guess < session[:number]
            flash[:low] = "Too Low"
        else
            flash[:success] = "You Guessed It!"
        end
        redirect_to '/'
    end
    def reset
        session.clear
        redirect_to '/'
    end
end
