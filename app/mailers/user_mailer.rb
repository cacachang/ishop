class UserMailer < ApplicationMailer
  def confirmation_instructions(record, token, opts={})
    @user = record
    @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
