class GamesController < ApplicationController
  helper PokemonHelper

  def show
    @game = @poke_api.game(params[:id])
  end
end
