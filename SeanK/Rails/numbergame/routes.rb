Rails.application.routes.draw do
  root 'guesses#index'
  post '/guess' => 'guesses#guess'
  get '/reset' => 'guesses#reset'

end
