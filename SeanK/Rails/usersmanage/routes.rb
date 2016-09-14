Rails.application.routes.draw do
get '/users' => 'users#index'
get '/users/new' => 'users#new'
get '/users/:id' => 'users#show'
get '/users/:id/edit' => 'users#edit'
patch'/users/:id' => 'users#update'
post '/users' => 'users#create'
delete '/users/:id' => 'users#delete'
root 'users#next'
end
