class RostersController < ApplicationController

  def show
    @roster = Roster.find(params[:id])
    render json: {:roster => @roster}
  end

  def create
    @roster = Roster.new(roster_params)
    binding.pry
    @roster.user_id = current_user.id
    if @roster.save!
      render json: {:roster => @roster}, status: :ok
    end
  end

  def update
    @roster = Roster.find(params[:id])
  end

  private
  def roster_params
    params.require(:roster).permit(:team_id, :user_id)
  end
end
