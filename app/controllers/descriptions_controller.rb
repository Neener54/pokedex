class DescriptionsController < ApplicationController
  helper PokemonHelper

  def show
    @description = @poke_api.description(params[:id])
  end
end
