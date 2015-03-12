class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(id)
		@user = User.find(id)
    @greeting = "Hi #{@user.first_name.capitalize}!"
		@body = 'Thanks for signing up for soci.al!'
		@link = 'Click here to start making recommendations!'
    mail to: @user.email
	end

end
