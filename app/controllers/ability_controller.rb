class AbilityController < ApplicationController
  helper PokemonHelper

  def show
    @poke_api.ability(params[:id])
  end

end
