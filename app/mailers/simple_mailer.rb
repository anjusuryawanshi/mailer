class SimpleMailer < ActionMailer::Base
  default from: "\"Mailer Daemon\" <no-reply@example.com>"

  def simple_email(smail)
    @smail_id = smail.id
    @smail_body = smail.body
    @smail_subject = smail.subject
    @hostname = '54.191.103.29:3000'
    mail(to: smail.to, subject: smail.subject)
  end
end
