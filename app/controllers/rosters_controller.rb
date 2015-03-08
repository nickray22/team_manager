class RostersController < ApplicationController

  def show
    @roster = Roster.find(params[:id])
    render json: {:roster => @roster}
  end

  def create
    @player = Player.find(params[:id]) 
    @roster = Roster.new(roster_params)
    @roster << @player 
    if @roster.save!
      render json: {:roster => @roster, :roster => @player}, status: :ok
    end
  end

  def update
    @roster = Roster.find(params[:id])
  end

  private
  def roster_params
    params.require(:user).permit(:id)
  end
end
