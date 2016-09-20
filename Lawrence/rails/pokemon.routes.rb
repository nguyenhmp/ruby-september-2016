Rails.application.routes.draw do
  get 'pokemons/index'
  get 'pokemons' => 'pokemons#index'
  get 'pokemons/new' => 'pokemons#new'
  post 'pokemons' => 'pokemons#create'
  get 'pokemons/:id' => 'pokemons#show'
  get 'pokemons/:id/edit' => 'pokemons#edit'
  patch 'pokemons/:id' => 'pokemons#update'
  delete 'pokemons/:id' => 'pokemons#destroy'
end
