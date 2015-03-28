class TypesController < ApplicationController
  helper PokemonHelper

  def show
    @type = @poke_api.type(params[:id])
  end
end
