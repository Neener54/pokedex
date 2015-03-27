class PokemonController < ApplicationController
  helper PokemonHelper
  def index
    @pokemon = @poke_api.index
  end

  def show
    @pokemon = @poke_api.pokemon(params[:id])
  end

end
