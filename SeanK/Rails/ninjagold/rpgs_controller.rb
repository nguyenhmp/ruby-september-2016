class RpgsController < ApplicationController
  def index
    if session[:ninjagold] == nil
      session[:ninjagold] = 0
      session[:list] = []
      session[:colors] = []
    end
  end

  def farm
    date = Time.now.strftime("%Y/%m/%d %I:%M %p")
    newmoney = rand(10..20)
    session[:ninjagold] += newmoney
    session[:list] <<  "Earned #{newmoney} from the farm! (#{date})"
    session[:colors] << "green"
    redirect_to '/'
  end

  def cave
    date = Time.now.strftime("%Y/%m/%d %I:%M %p")
    newmoney = rand(5..10)
    session[:ninjagold] += newmoney
    session[:list] <<  "Earned #{newmoney} from the cave! (#{date})"
    session[:colors] << "green"
    redirect_to '/'
  end

  def house
    date = Time.now.strftime("%Y/%m/%d %I:%M %p")
    newmoney = rand(2..5)
    session[:ninjagold] += newmoney
    session[:list] <<  "Earned #{newmoney} from the house! (#{date})"
    session[:colors] << "green"
    redirect_to '/'
  end

  def casino
    date = Time.now.strftime("%Y/%m/%d %I:%M %p")
    newmoney = rand(-50..50)
    session[:ninjagold] += newmoney
    if newmoney > 0
      session[:list] <<  "Earned #{newmoney} from the casino! (#{date})"
      session[:colors] << "green"
    elsif newmoney < 0
      session[:list] <<  "Entered a casino and lost #{newmoney} golds... Ouch... (#{date})"
      session[:colors] << "red"
    else
      session[:list] << "NOTHIN MAN NOTHING (#{date})"
      session[:colors] << "black"
    end

    redirect_to '/'
  end
end
