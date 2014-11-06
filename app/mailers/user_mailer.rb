class UserMailer < ActionMailer::Base
  default from: "yangshiqi1q2w3e@gmail.com"
  def send_report(user, sender)
    @user = user
    @sender = sender
    delivery_options = { user_name: @sender.smtp_user,
                         password: @sender.smtp_password,
                         address: @sender.smtp_address,
                         port: @sender.smtp_port }
    mail(from: @sender.email, to: @user.email, subject: 'Grades report', delivery_method_options: delivery_options)
  end
end
