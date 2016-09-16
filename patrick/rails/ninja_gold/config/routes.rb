Rails.application.routes.draw do
  get '/' => 'golds#index'
  get '/process' => 'golds#gold_logic'
  get '/reset' => 'golds#reset'
end
