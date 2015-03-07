class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    if @user
      render json: user_params(@user), status: :created
    else
      render json: { messages: @manager.errors.full_messages}, status: :unprocessable_entity
    end
  end


  private

  def user_params
    params.require(:user).permit(:id, :email, :type, :name, :gender, :age)
  end

  def type_params
    params.require(:user).permit(:id, :type, :email)
  end
end


# a2VCWRtGaSZt3NfykHGa
