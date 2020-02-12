require "rails_helper"
require 'pry'

feature 'User can login' do
    before do
        visit new_user_session_path
    end

        feature 'happy path' do
            before do
                fill_in 'Email', with: 'robin.lillqvist@gmail.com'
                fill_in 'Password', with: 'Test1234'
                click_button('Log in')
            end

        it 'displays welcome message' do
            expect(page).to have_content 'Success'
        end
   
        it 'displays welcome message' do
            expect(page).to have_content 'Hello'
        end

        it 'displays welcome message' do
            expect(page).to have_content 'Logout'
        end

        it 'redirects to root path' do
            expect(current_path).to eq root_path
        end
    end

end