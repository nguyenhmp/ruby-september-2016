class NinjasController < ApplicationController
  def index
  end

  def create
      flash[:name] = "Name is required" if params[:name].empty?
      flash[:description] = "Description is required" if params[:description].empty?
      if flash.keys.empty?
          redirect_to success_path
      else
          redirect_to root_path, alert: "Failed to submit form.  Please enter required information."
      end
  end

  def success
  end
end
