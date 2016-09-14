class RpgController < ApplicationController
  def index
    if session[:gold]==nil
      session[:gold]=0 
      session[:activities]=[]
      session[:status]=[]
    end
    puts session[:activities]
  end

  def farm
    rando=rand(10..20)
    session[:gold]+=rando
    session[:activities].push("Earned #{rando} gold from the farm!")
    session[:status].push('green')
    redirect_to action:'index'
  end

  def cave
    rando=rand(5..10)
    session[:gold]+=rando
    session[:activities].push("Earned #{rando} gold from the cave!")
    session[:status].push('green')
    redirect_to action:'index'
  end

  def casino
    rando=rand(-50..50)
    session[:gold]+=rando
    if rando<0
      session[:activities].push("Lost #{rando} gold from the casino!  Ouch!")
      session[:status].push('red')
    end
    if rando>0
      session[:activities].push("Earned #{rando} gold from the casino!")
      session[:status].push('green')
    end
    redirect_to action:'index'
  end

  def house
    rando=rand(2..5)
    session[:gold]+=rando
    session[:activities].push("Earned #{rando} gold from the house!")
    session[:status].push('green')
    redirect_to action:'index'
  end
end
