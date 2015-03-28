class EggsController < ApplicationController
  helper PokemonHelper

  def show
    @egg = @poke_api.egg(params[:id])
  end
end
