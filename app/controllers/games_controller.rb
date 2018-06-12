class GamesController < ApplicationController

  def index
    @games = Game.all
    render :json => @games
  end

  def create
    @game = Game.create
    render :json => @game
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
