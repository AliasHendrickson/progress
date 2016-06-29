class UserMailer < ApplicationMailer
  default from: 'progressreportdbc@gmail.com'

  def morning_goal(user)
    @user = user
    @url = 'https://shrouded-wave-50870.herokuapp.com/'
    mail(to: @user.email, subject: "Rise and Grind!")
  end
end
