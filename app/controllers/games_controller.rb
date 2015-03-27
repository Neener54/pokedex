class GamesController < ApplicationController
  helper PokemonHelper

  def show
    @pokemon = @poke_api.game(params[:id])
  end
end
