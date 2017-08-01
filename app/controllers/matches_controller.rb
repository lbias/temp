class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]

  # GET /matches
  def index
    @matches = Match.includes(games: :winner, teams: :players)
  end

  # GET /matches/1
  def show
    @teams = @match.teams
    @games = @match.games
  end

  # GET /matches/new
  def new
    @match = Match.new
  end

  # POST /matches
  def create
    @match = Match.new
    @match.add_players_by(params[:player_ids]) if params[:player_ids].present?
    if @match.save
      redirect_to @match, notice: 'Match was successfully created.'
    else
      render :new
    end
  end

  # DELETE /matches/1
  def destroy
    @match.destroy
    redirect_to matches_url, notice: 'Match was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def match_params
      # raise params.inspect
      # params.requir
    end
end
