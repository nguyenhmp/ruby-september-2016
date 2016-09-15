Rails.application.routes.draw do
  get '/' => 'test#index'
  get '/hello/' => 'test#index1'
  get '/say/hello/' => 'test#index2'
  get '/say/hello/:name' => 'test#index3'
  get '/times/' => 'test#times'
  get '/times/restart' => 'test#destroytimes'
end
