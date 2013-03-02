class UserMailer < ActionMailer::Base
  #default from: "admin@example.com"
  default from: "itsp09cntt2@gmail.com"
  
  def adminSendMail(email, link, pass)
    mail(:to => email, :subject => "Admin send link and password to exam!", :body => "Go to exam: "+link+" - Password: " + pass)
  end
end
