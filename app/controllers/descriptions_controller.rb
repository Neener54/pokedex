class DescriptionsController < ApplicationController
  helper PokemonHelper

  def show
    @pokemon = @poke_api.description(params[:id])
  end
end
