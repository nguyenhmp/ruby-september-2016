class RpgController < ApplicationController
  def index
      session[:gold] = 0 unless session[:gold].present?
      session[:activity] = [] unless session[:activity].present?
  end

  def farm
      collect_gold(rand(10..20), "Farm")
      redirect_to root_path
  end

  def cave
      collect_gold(rand(5..10), "Cave")
      redirect_to root_path
  end

  def house
      collect_gold(rand(2..5), "House")
      redirect_to root_path
  end

  def casino
      collect_gold(rand(-50..50), "Casino")
      redirect_to root_path
  end

  private
  def collect_gold(incriment, location)
      session[:gold] += incriment
      if incriment < 0
          msg = "Tragedy!! Lost #{incriment*-1} gold at the #{location}! (#{Time.now.strftime('%D  %I:%M %p')})"
          session[:activity].unshift({ text:msg, category:"loss" })
      else
          msg = "Gained #{incriment} gold at the #{location}! (#{Time.now.strftime('%D  %I:%M %p')})"
          session[:activity].unshift({ text:msg, category:"gain" })
      end
  end
end
