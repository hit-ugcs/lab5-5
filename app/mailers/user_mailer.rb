class UserMailer < ActionMailer::Base
  default from: "parkd2012@gmail.com"
  def send_report(user)
    @user = user
    mail(to: @user.email, subject: 'Grades report')
  end
end
