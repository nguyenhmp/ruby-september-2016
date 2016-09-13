class TimesController < ApplicationController
  def main
  	t=Time.new
  	@date=t.strftime("%b %-d, %Y")
  	@time=t.strftime("%k:%M%p")
  end
end
