class TeamManagerMailer < ActionMailer::Base
  default from: 'admin@teammanager.com'

  def email_address
    mail(to: 'iangawronski@gmail.com', subject: 'Player invited to join Roster/Team')
  end

  def join_request(request, coach_name)
    @request = request
    mail(to: @invite[0], subject: "Roster Addition Request from #{coach_name}")
  end

end
