class AbilityController < ApplicationController
  helper PokemonHelper

  def show
    @ability = @poke_api.ability(params[:id])
  end

end
