require 'rails_helper'
require 'spec_helper'

RSpec.describe UsersController, type: :controller do




 describe "GET #index" do
    before(:each) do
      get :index
    end

    it "should have status code of 200" do
      expect(response).to have_http_status(200)
    end

    it 'should render the correct page' do
      expect(response).to render_template :index
    end
  end


  describe "DELETE #destroy" do
    before(:each) do
      @user1 = User.create!(first_name:'Susan', last_name:'Mansoori', email:'example1@gmail.com', password: 'meow123', twitter: 'hello')
      @user2 = User.create!(first_name:'Susann', last_name:'Mansoorii', email:'example2@gmail.com', password: 'meow123', instagram: 'goodbye')
     
    end

    it "deletes a user from the DB" do
      expect{delete :destroy, id: @user2.id}.to change(User, :count).by(-1)
    end

  # it "dd" do 
   #   expect(@user1).to eq(nil)
   #end
    
  end #End destroy controller tests


end
