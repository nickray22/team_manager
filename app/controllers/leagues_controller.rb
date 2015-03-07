class LeaguesController < ApplicationController
  before_action :authenticate_user_from_token!

  def index
    @leagues = League.all
    render json: { :league => @leagues }
  end

  def create
    @league = League.new(league_params)
    if @league.save!
      render json: { :league => @league }, status: :created
    else
      render json: { :messages => @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @league = League.find(params[:id])
    render json: { :league => @league }, status: :ok
  end

  def add
    @league = League.find(params[:id])
    @team = Team.find(params[:team_id])
    @league.teams << @team
    @teams = Team.find_by(params[:league_id])
    if @league.save!
      render json: { :league => @league, :team => @teams }, status: :ok
    else
      render json: { :messages => @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def league_params
    params.require(:league).permit(:name)
  end

  def team_params
    params.require(:team).permit(:coach_name, :name, :sport, :homefield)
  end

  def as_json(opts={})
    super(:only =>[:name, :id, :team_id])
  end

  def league_response(league)
    { :league => league.as_json(include: { team: { :only => [:id, :name, :coach_name, :homefield, :sport]}})}
  end
end
