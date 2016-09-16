class GoldsController < ApplicationController
    def index
        if !session[:gold] && !session[:logs]
            session[:gold] = 0
            session[:logs] = []
        end
        @gold = session[:gold]
        @logs = session[:logs]
        render :index
    end

    def gold_logic
        @time = (DateTime.now).strftime("%B %d, %Y @ %l:%M %P")
        if params[:click] == "farm"
            @number = rand(10..20)
            session[:gold] += @number
            session[:logs].push("Earned #{@number} golds from the farm! (#{@time})")
        elsif params[:click] == "cave"
            @number = rand(5..10)
            session[:gold] += @number
            session[:logs].push("Earned #{@number} golds from the cave! (#{@time})")
        elsif params[:click] == "house"
            @number = rand(2..5)
            session[:gold] += @number
            session[:logs].push("Earned #{@number} golds from the house! (#{@time})")
        elsif params[:click] == "casino"
            @number = rand(-50..50)
            session[:gold] += @number
            if @number >= 0
                session[:logs].push("Earned #{@number} golds from the casino! (#{@time})")
            else
                @number = @number * -1
                session[:logs].push("Earned a casino and lost #{@number} golds... Ouch... (#{@time})")
            end
        end
        redirect_to '/'
    end
    def reset
        session.clear
        redirect_to '/'
    end
end
