require 'jquery-rails'

class GamesController < ApplicationController
  before_action :authenticate_user!, :set_game, only: [:show, :edit, :update, :destroy]
  set_tab :games

  # GET /games
  # GET /games.json
  def index
    @games = Game.all

# Search/filter our database
    if params[:name]
      @games = Game.where(name: params[:name])
    end
  end

  # GET /games/1
  # GET /games/1.json
  def show
    # @game = Game.find_by :name => params[:name]
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  def result
    title = params[:title]
    # find the id
    info = HTTParty.get "http://www.boardgamegeek.com/xmlapi/search?search=#{title}"
      id = info["boardgames"]["boardgame"]
        if id.is_a? Array
          id = info["boardgames"]["boardgame"][0]["objectid"]
        else
          id = info["boardgames"]["boardgame"]["objectid"]
        end
    # find the info that id
    game = HTTParty.get "https://boardgamegeek.com/xmlapi/boardgame/#{ id }?&search=1"
      @name = game["boardgames"]["boardgame"]["name"]
      if @name.is_a? Array
        @name = game["boardgames"]["boardgame"]["name"][0]["__content__"]
      else
        @name = game["boardgames"]["boardgame"]["name"]["__content__"]
      end
      @image = game["boardgames"]["boardgame"]["image"]
      @description = game["boardgames"]["boardgame"]["description"]
      @min_players = game["boardgames"]["boardgame"]["minplayers"]
      @max_players= game["boardgames"]["boardgame"]["maxplayers"]
      @age = game["boardgames"]["boardgame"]["age"]
      @playing_time = game["boardgames"]["boardgame"]["playingtime"]
    # return game
    list = Game.where('boardgame.name' => @name)
      # redirect them to the show page for that boardgame so they can add that game to their shelf from there
        @game = Game.create(:name => @name, :description => @description, :min_players => @min_players, :max_players => @max_players, :age => @age, :playing_time => @playing_time, :image => @image)
    end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:name, :min_players, :max_players, :age, :playing_time, :description, :image)
    end
end
