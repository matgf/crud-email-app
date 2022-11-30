class UserMailer < ApplicationMailer
  ##TODO: Change email
  default from: 'matiasgf18@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'correo de prueba')
  end
end
