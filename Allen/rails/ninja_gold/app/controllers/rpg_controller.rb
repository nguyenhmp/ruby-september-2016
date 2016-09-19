class RpgController < ApplicationController

  def index
    if !session[:gold]
      session[:gold] = 0
    end

    if !session[:activity]
      session[:activity] = []
    end
  end

  def farm
    farm = rand(10..20)
    session[:gold] = session[:gold] + farm
    @farmgold = "Earned #{farm} golds from the farm! (#{Time.now})"
    session[:activity].push(@farmgold)
    render 'index'
  end

  def cave
    cave = rand(5..10)
    session[:gold] = session[:gold] + cave
    @farmcave = "Earned #{cave} golds from the farm! (#{Time.now})"
    session[:activity].push(@farmcave)


    render 'index'
  end

  def house
    house = rand(2..5)
    session[:gold] = session[:gold] + house
    @farmhouse = "Earned #{house} golds from the farm! (#{Time.now})"
    session[:activity].push(@farmhouse)

    render 'index'
  end

  def casino
    casino = rand(-50..50)
    session[:gold] = session[:gold] + casino
    if casino > 0
      @farmcasino = "Earned #{casino} golds from the farm!  (#{Time.now})"
      session[:activity].push(@farmcasino)
    else
      @farmcasino = "Entered a casino and lost #{casino} gold.. OUCH!  (#{Time.now})"
      session[:activity].push(@farmcasino)
    end
    render 'index'
  end

  def clear
    session[:gold] = 0
    session[:activity] =[]
    render 'index'

  end
end
