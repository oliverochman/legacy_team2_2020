require "rails_helper"
require 'pry-byebug'

feature 'User can login' do

    before do
        visit new_user_session_path
        fill_in 'Email', with: 'email@email.com'
        fill_in 'Password', with: 'password'
    end

    it 'shows a form wíth input for Email' do
        expect(page).to have_field 'Email'
    end

    it 'shows a form wíth input for password' do
        expect(page).to have_field 'Password'
    end

    it 'shows a form wíth a checkbox to remember information' do
        expect(page).to have_field "Remember me"
    end

    it 'shows a button so we can login' do
        expect(page).to have_button 'Log in'
    end

    it 'shows a link to forgotten password' do
        expect(page).to have_link 'Sign up'
    end
    
    it 'shows a link to registration' do
        expect(page).to have_link 'Forgot your password?'
    end

    it 'displays welcome message' do
        expect(page).to have_content 'Hello, Blake'
      end
    
      it 'redirects to root path' do
        expect(current_path).to eq root_path
    end
    

end