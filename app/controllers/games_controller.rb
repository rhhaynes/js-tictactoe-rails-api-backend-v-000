class GamesController < ApplicationController
  before_action :set_game, :only => [:show, :update]

  def index
    @games = Game.all
    render :json => @games
  end

  def create
    @game = Game.create(:state => ["","","","","","","","",""])
    render :json => @game
  end

  def show
    render :json => @game
  end

  def update
    @game.update(game_params)
    render :json => @game
  end

  private

  def set_game
    @game = Game.find_by(:id => params[:id])
  end
end
