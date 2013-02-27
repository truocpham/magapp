class MailController < ApplicationController
  def sendMail
    params=request.POST
    @email=params[:e]
    @password=params[:p]
    @link=params[:l]
    UserMailer.adminSendMail(@email).deliver
  end
end
