class UsersController < ApplicationController
  before_action :authenticate_user_from_token!

  def show
    @user = current_user
    render json: {:user => @user}, status: :created
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
