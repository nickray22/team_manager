class TeamsController < ApplicationController
  before_action :authenticate_user_from_token!

  def create
    @team = Team.new(team_params)
    @team.user_id = current_user.id
    if @team.save!
      render json: { :team => @team }, status: :created
    else
      render json: { :messages => @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @team = Team.find(params[:id])
    render json: { :team => @team }, status: :ok
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)
    if @team.save!
      render json: { :team => @team }, status: :ok
    else
      render json: { :messages => @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def delete
    @team = Team.find(params[:id])
    @team.destroy!
  end

  private
    def team_params
      params.require(:team).permit(:coach_name, :name, :sport, :homefield)
    end
end
