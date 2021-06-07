class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.new_account.subject
  #
  def new_account(user)
    @user = user
    mail(to: user.email, subject: "Account #{user.name} is active")
  end
end
