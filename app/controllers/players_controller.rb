class PlayersController < ApplicationController

  def show
    @player = Player.find(params[:id])
    render json: {:user => @player}, status: :ok
  end

  def create
    @player = Player.create(player_params)
    if @player
      render json: {:user => @player}, status: :ok
    end
  end

  private
  def player_params
    params.require(:user).permit(:player_name, :players_mother_name, :players_father_name, :players_position, :players_birthday)
  end
end
