require "rails_helper"

RSpec.describe RecommendationMailer, type: :mailer do
  describe "new_recommendation" do
    let(:mail) { RecommendationMailer.new_recommendation }
end

end
