class UsersController < ApplicationController
    def result
        if !session[:count]
            session[:count] = 1
        else
            session[:count] += 1
        end
        @user = params[:user]
        @count = session[:count]
    end
end
