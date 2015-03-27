class EggsController < ApplicationController
  helper PokemonHelper

  def show
    @pokemon = @poke_api.move(params[:id])
  end
end
