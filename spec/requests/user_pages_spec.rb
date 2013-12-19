require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "user_first_name",   with: "Example"
        fill_in "user_last_initial", with: "U"
        fill_in "user_email",        with: "user@example.com"
        fill_in "user_tag",					with: "GA123456"
        fill_in "user_password",     with: "foobar"
        fill_in "user_password_confirmation", with: "foobar"
        page.check("user_tndcheck")
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end

  describe "profile page" do
  	let(:user) { FactoryGirl.create(:user) }
  	before { visit user_path(user) }

    it { should have_content(user.first_name) }
    # TODO: Add test for title
    #it { should have_title(user.first_name) }
  end
end