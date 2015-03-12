# Preview all emails at http://localhost:3000/rails/mailers/recommendation_mailer
class RecommendationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/recommendation_mailer/new_recommendation
  def new_recommendation
    RecommendationMailer.new_recommendation
  end

end
