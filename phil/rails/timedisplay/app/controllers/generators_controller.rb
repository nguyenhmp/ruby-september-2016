class GeneratorsController < ApplicationController
  def index
  end
  def create
      session[:count] = 0 unless session.has_key? "count"
      session[:count] += 1
      session[:word] = ""
      14.times { session[:word] << rand(26)+97 }
      redirect_to generator_path
  end
end
