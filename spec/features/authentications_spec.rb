require 'rails_helper'

RSpec.feature "Authentications:", type: :feature do
  before(:each) do
    FactoryGirl.create_list(:team,3)
  end

  describe "user registers" do
    context "when User inputs correct register details" do
      it 'saves the user to the database' do
        visit "/"
        click_link "Sign up"
        fill_in "user_email", with: "test@user.com"
        fill_in "user_password", with: "test1234"
        fill_in "user_password_confirmation", with: "test1234"
        option = page.find(:xpath, "//*[@id='user_team_id']/option[2]").text
        page.select(option,from:'user_team_id')
        expect{
          click_button 'Sign up'
        }.to change{
          User.count
        }.by(1)
      end


      it 'authorizes the user and redirects to root'

      it 'shows a "Register succesful" flash message to the user'

    end

  end

  describe "user login" do
    context "when User inputs correct email and password" do
      it 'authorizes the user and redirects to root'


      it 'shows a "Login succesful" flash message to the user'

    end
    context "when User inputs incorrect email or password" do
      it 'shows a "Wrong input message"'

    end

  end

  describe "user logout" do

  end

end
