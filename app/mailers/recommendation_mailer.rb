class RecommendationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.recommendation_mailer.new_recommendation.subject
  #
	def new_recommendation(id_to,id_from)
		@user = User.find(id_to)
		@recommender = User.find(id_from)
		@greeting = "Hi #{@user.first_name.capitalize}!"
		@body = "#{@recommender.first_name.capitalize} sent you a recommendation on soci.al!"
		@link = 'Click here to check it out!'
		mail to: @user.email
	end
end
