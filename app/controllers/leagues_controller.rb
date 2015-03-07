class LeaguesController < ApplicationController

  def create
    @league = League.new(league_params)
    if @league.save!
      render json: { :league => @league }, status: :created
    else
      render json: { :messages => @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def add
    @league = League.find(params[:id])
  end

  private

  def league_params
    params.require(:league).permit(:name)

end
