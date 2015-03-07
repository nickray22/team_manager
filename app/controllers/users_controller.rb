class UsersController < ApplicationController
  before_action :authenticate_user!


  def choose
    @manager = Manager.new(manager_params)
    @manager.save!
    if @manager.save
      render json: { :manager => @manager }, status: :created
    else
      render json: { messages: @manager.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private
    def manager_params
      params.require(:manager).permit(:user_id, :manager_id, :name, :team_id)
    end

    def parent_params
      params.require(:parent).permit(:player_id, :parent_id, :name, :user_id)
    end

    # def player_params
    #   params.require(:player).permit(:roster_id, :user_id, :gender, :age, :name, :player_id)
    # end

    def coach_params
      params.require(:coach).permit(:coach_id, :team_id, :league_id, :user_id, :name)
    end
end


# a2VCWRtGaSZt3NfykHGa
