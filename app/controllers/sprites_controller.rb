class SpritesController < ApplicationController
  helper PokemonHelper

  def show
    @pokemon = @poke_api.sprite(params[:id])
  end
end
