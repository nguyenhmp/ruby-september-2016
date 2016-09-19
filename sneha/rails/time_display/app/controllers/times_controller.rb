class TimesController < ApplicationController
	require 'date'
  
  def main
  	@time = Time.new
  end
end
