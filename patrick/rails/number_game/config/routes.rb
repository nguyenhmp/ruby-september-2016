Rails.application.routes.draw do
  get '/' => 'numbers#index'
  get '/guess' => 'numbers#guess'
  get '/reset' => 'numbers#reset'
end
