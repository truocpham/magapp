class MailController < ApplicationController
  def sendMail
    params = request.POST
    email = params[:email]
    password = params[:password]
    link = params[:link]
    UserMailer.adminSendMail(email, link, password).deliver
  end

  def insertMail
  	params = request.POST
  	email = params[:email]
  	userId = params[:user_id]
  	userExams = Userexam.find(userId)
  	userExams.email = email
  	userExams.save
  end

end
