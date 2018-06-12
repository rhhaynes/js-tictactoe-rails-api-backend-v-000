class GamesController < ApplicationController

  def index
  end

  def create
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
