class SimpleMailer < ActionMailer::Base
  default from: "\"Mailer Daemon\" <no-reply@example.com>"

  def simple_email(smail)
    @simple_body = smail.body
    mail(to: smail.to, subject: smail.subject)
  end
end
