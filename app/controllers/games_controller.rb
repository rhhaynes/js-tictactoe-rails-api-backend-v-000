class GamesController < ApplicationController

  def index
  end

  def create
    @game = Game.new(game_params)
    render(:json => @game, :status => 201) if !!@game.save
  end

  def show
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
