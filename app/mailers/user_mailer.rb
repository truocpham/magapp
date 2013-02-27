class UserMailer < ActionMailer::Base
  default from: "admin@example.com"
  
  def adminSendMail(email)
    mail(:to => email, :subject => "Admin send email")
  end
end
