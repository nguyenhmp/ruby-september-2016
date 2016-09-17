class WordController < ApplicationController
  def index
    if !session['attempt']
      session['attempt'] = 0
    end
  end

  def generator

    session['attempt'] += 1
    session['word'] = (0...15).map { ('a'..'z').to_a[rand(26)] }.join
    # wont work with @word = ....

    redirect_to action: 'index'
  end
end
