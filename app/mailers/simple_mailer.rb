class SimpleMailer < ActionMailer::Base
  default from: "no-reply@example.com"

  def welcome_email()
    @url = 'http://example.com/login'
    mail(to: 'anshul.verma86@gmail.com', subject: 'Welcome to my awesome site')
  end
end
