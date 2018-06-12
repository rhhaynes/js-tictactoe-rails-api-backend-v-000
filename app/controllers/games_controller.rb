class GamesController < ApplicationController

  def index
  end

  def create
    @game = Game.new(game_params)
    render(:json => @game, :status => 201) if !!@game.save
  end

  def show
    render :json => @game
  end

  def update
  end

  private

  def set_game
    @game = Game.find_by(:id => params[:id])
  end

  def game_params
    params.require(:game).permit(:state)
  end
end
