class TimesController < ApplicationController
  def main
    @curr_date = Time.now.strftime("%m/%d/%Y")
    @curr_time = Time.now.strftime("%H:%M")
    # render 'times/main'
  end
end
