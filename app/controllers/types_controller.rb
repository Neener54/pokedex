class TypesController < ApplicationController
  helper PokemonHelper

  def show
    @pokemon = @poke_api.type(params[:id])
  end
end
