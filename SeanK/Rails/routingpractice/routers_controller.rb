class RoutersController < ApplicationController
  def hello
    render text: "Hello CodingDojo!"
  end

  def sayhello
    render text: "Saying Hello"
  end

  def sayhellojoe
    render text: "Saying Hello Joe"
  end

  def index
    render text: "What do you want me to say???"
  end

  def micheal
    redirect_to '/say/hello/joe'
  end
  def times
    if session[:number] == nil
      session[:number] = 1
    else 
      session[:number] += 1
    end
    render text: "You visited this url #{session[:number]}"
  end

  def restart
    session[:number] = nil
    render text: "Destroyed the session!"
  end
end
