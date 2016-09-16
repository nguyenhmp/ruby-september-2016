class RpgController < ApplicationController
  def index
  	if not session[:gold]
  		@total = 0
      session[:gold] = 0
      session[:activity]= []
  		render 'casino'
    else
      @total = session[:gold]
      render 'casino'
  	end
  end

  def farm
    @cash = rand(10..20)
    @time = Time.now
  	session[:gold] = session[:gold] + @cash
    session[:activity].push("Youve earned #{@cash} from the farm! (#{@time})")
  	redirect_to '/'
  end

  def cave
    @cash = rand(5..10)
    @time = Time.now
    session[:gold] = session[:gold] + @cash
    session[:activity].push("Youve earned #{@cash} from the cave! (#{@time})")
  	redirect_to '/'
  end

  def house
    @cash = rand(2..5)
    @time = Time.now
    session[:gold] = session[:gold] + @cash
    session[:activity].push("Youve earned #{@cash} from the house! (#{@time})")
  	redirect_to '/'
  end

  def casino
    @cash = rand(-50..50)
    @time = Time.now
    session[:gold] = session[:gold] + @cash
    if @cash < 0
      session[:activity].push("Youve lost #{@cash} at the casino! (#{@time})")
    else
      session[:activity].push("Youve earned #{@cash} from the casino! (#{@time})")
    end
  	redirect_to '/'
  end
end
