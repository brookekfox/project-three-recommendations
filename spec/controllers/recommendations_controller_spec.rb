require 'rails_helper'

RSpec.describe RecommendationsController, type: :controller do

	describe "public or private recommendation" do
    		it "returns only public recommendations on the public page" do
  		end
  	end
  
	describe "GET #new" do
	    it "returns http success" do
	      get :new
	      expect(response).to have_http_status(:success)
	    end
	end

 	describe "destroy recommendation" do
	    it "deletes a recommendation from the DB" do
	      expect{delete :destroy, id: @recommendations.id}.to change(Recommendation, :count).by(-1)
	    end
	end


end
