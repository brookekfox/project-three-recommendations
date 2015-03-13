require 'rails_helper'

RSpec.describe Recommendation, type: :model do
    
 	describe "recommendation" do
	    it {should validate_presence_of(:social_media)}
	end

  	describe "POST #create" do
  		it "persists on recommendation to the DB" do
  		expect(Recommendation.create).to change(Recommendation)   
  		end
  	end
  
  let(:recommendation) { FactoryGirl.create :recommendation }

  describe "validates presence of post category" do
    it { should validate_presence_of(:social_media) }
  end

  describe "validates presence of post content" do
    it { should validate_presence_of(:handle) }
  end


end
