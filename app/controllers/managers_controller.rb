class ManagersController < ApplicationController

  def choose
    @manager = Manager.new(manager_params)
    @manager.save!
    if @manager.save
      render json: manager_response(@manager), status: :created
    else
      render json: { messages: @manager.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private
    def manager_params
      params.require(:manager).permit(:user_id, :manager_id, :name, :team_id)
    end

    def manager_response(manager)
    { :manager => manager.as_json(include: { user: { :only => [:id, :email]}})}
    end
end
