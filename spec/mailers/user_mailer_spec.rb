require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "welcome" do
    let(:mail) { UserMailer.welcome }
  it 'renders the receiver email' do
    expect{(mail.to).to eql([user.email])}
  end
end
end
