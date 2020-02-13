require 'rails_helper'
require 'pry'
require 'factory_bot_rails'

feature 'User can login' do
    
    before do
        visit user_session_path 
    end

        describe 'happy path' do
           let(:registered_user) { FactoryBot.create(:user) } 

            it 'expect to Hello message' do
                fill_in 'email@email.com', with: 'String@string.com'
                fill_in 'password', with: 'password1234'
                click_on "Log in"
                expect(page).to have_content 'Signed in successfully.'
            end
    end  
end

