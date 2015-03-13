require 'rails_helper'

RSpec.describe User, type: :model do
	it { should allow_value('susan@gmail.com').for(:email)}
  	it { should_not allow_value('su@sa@n.com').for(:email)}
	
  	# it { should validate_presence_of(:first_name) }
  	# it { should validate_presence_of(:last_name) }


	it "captilizes the first and last name of user" do
  		@user = User.create(first_name: "susan", last_name: "mansoori")
  		expect(@user.full_name).to eq("Susan Mansoori")
  	end


	it 'should allow a user to log in' do
		user = User.create(email:'brooke@brooke.com', password:'1234')
		login_attempt = user.authenticate('1234') #if the password is correct, it returns the user object
		expect(login_attempt).to be_an_instance_of(User)
		expect(login_attempt).to eql(user)
	end

	it "is invalid without a firstname" do
		user = User.new(first_name: nil)
		user.valid?
		expect(user.errors[:first_name]).to include("you have to have a first name")
 	end

	it "returns an error message if you don't input either an instagram or twitter handle/email" do
		user = User.create(first_name: 'John', last_name: 'Doe', email: 'johndoe@example.com', password: '54321')
 		expect(user.errors)
 	end

 	describe "either_twitter_or_instagram" do
 		it "makes sure user inputs either a twitter or instagram handle or an email" do
 			user = User.create(first_name: 'Mary', last_name: 'Contrary', email: 'johndoe@example.com', password: '54321')
 			expect(user.errors.add(:twitter)).to include("you need either a handle or an email")
 			expect(user.errors.add(:instagram)).to include("you need either a handle or an email")
 		end
 	end

	describe "when email address is already taken" do
        before do
            user_with_same_email = @user.email.dup
            user_with_same_email.email = @user.upcase
            user_with_same_email.save
        end
        it { should_not be_valid }
    end

    let(:user) { FactoryGirl.create :user }

	  # describe "validates presence of  first_name" do
	  #   it { should validate_presence_of(:first_name) }
	  # end

	  # describe "validates presence of last_name" do
	  #   it { should validate_presence_of(:last_name) }
	  # end

	  describe "validates presence of email" do
	    it { should validate_presence_of(:email) }
	  end

	  describe "validates presence of password" do
	    it { should validate_presence_of(:password) }
	  end

	  describe "validates uniqueness_of_email" do
	    it { should validate_uniqueness_of(:email) }
	  end

	  describe "invalidates invalid email" do
	    it { should_not allow_value("test@test").for(:email) }
	  end

	  describe "validates valid email" do
	    it { should allow_value("test@test.com").for(:email) }
	  end


end
