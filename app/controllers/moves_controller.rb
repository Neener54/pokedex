class MovesController < ApplicationController
  def show
    @move = @poke_api.move(params[:id])
  end
end
