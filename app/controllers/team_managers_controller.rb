class TeamManagersController < ApplicationController

  def index
    TeamManagerMailer.email_name.deliver_now
    redirect_to new_user_registration_path
  end

end
