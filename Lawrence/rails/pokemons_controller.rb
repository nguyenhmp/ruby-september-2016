class PokemonsController < ApplicationController
  def index
    @critters = Critter.all
  end

  def new
  end

  def create
    Critter.create(name: params[:name])
    redirect_to '/pokemons'
  end

  def show
    @critter = Critter.find(params[:id])
  end

  def edit
    @critter = Critter.find(params[:id])
  end

  def update
    critter = Critter.find(params[:id])
    critter.name = params[:name]
    critter.save
    redirect_to '/pokemons'
  end

  def destroy
    critter = Critter.find(params[:id])
    critter.destroy
    redirect_to '/pokemons'
  end
end
