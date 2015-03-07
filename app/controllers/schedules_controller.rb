class SchedulesController < ApplicationController
  before_action :authenticate_user_from_token!

  def show
    @schedule = Schedule.all
    if @schedule
      render json: {:schedule => @schedule}
    else
      render json: {:schedule => "There are no schedules"}
    end
  end

  def create
    binding.pry
    @schedule = Schedule.new(schedule_params)
    binding.pry
    if @schedule.save!
      binding.pry
      render json: {:schedule => @schedule}, status: :created
    else
      render status: :unprocessable_entity
    end
  end

  def update
    binding.pry
    @schedule = Schedule.find(params[:id])
    @schedule.finish = params[:schedule][:finish]
    binding.pry
    if @schedule.save

      render json: {:schedule => @schedule}
    else
      render status: :unprocessable_entity
    end
  end


  private

  def schedule_params
    params.require(:schedule).permit(:team_id, :game_day, :practice, :date, :finish)
  end


end