class EventNotifier < ActionMailer::Base
  default :from => 'onehundredclubchicago@gmail.com'

  # send an email to the user when a new Event is created, pass in the user object that   contains the user's email address
  def send_event_email(user)
    @user = user
    mail(:to => @user.email,
         :subject => 'An event has been created.')
  end
end