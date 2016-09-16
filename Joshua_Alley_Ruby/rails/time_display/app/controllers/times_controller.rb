class TimesController < ApplicationController
  def main
  	@time2 = Time.now.strftime("%I:%M%p")
  	@time = Time.now.strftime("%m/%d/%Y")
  	render 'main'
  end
end
