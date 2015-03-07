class SchedulesController < ApplicationController
  before_action :authenticate_user_from_token!

  def show
    binding.pry
    @schedule = Schedule.all

    render json: {}
  end

  def create
    binding.pry
    @schedule = Schedule.new(schedule_params)
  end

  def edit
  end

  def schedule_params
    params.require(:schedule).permit(:team_id, :gameday, :practice, :date, :finish)
  end


end