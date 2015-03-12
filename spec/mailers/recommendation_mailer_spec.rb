require "rails_helper"

RSpec.describe RecommendationMailer, type: :mailer do
  describe "new_recommendation" do
    let(:mail) { RecommendationMailer.new_recommendation }

    it "renders the headers" do
      expect(mail.subject).to eq("New recommendation")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
