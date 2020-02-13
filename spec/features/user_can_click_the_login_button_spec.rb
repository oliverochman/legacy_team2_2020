require 'rails_helper'
require 'pry'

feature 'User can login' do
    
    before do
        let(:registered_user)  FactoryBot.create(:user) }
        # let(:user) = User.create(email: 'test@test.com', name: 'Robin', password: 'test1234', password_confirmation: 'test1234')
        # create(email: 'test@test.com', name: 'Robin', password: 'test1234', password_confirmation: 'test1234')
        visit user_session_path
    end

        describe 'happy path' do
        
            it 'test input email' do
                fill_in 'Email', with: 'test@test.com'
                expect(find_field('Email').value).to eq 'test@test.com'    
            end

            it 'test input password' do
                fill_in 'Password', with: 'test1234'
                expect(find_field('Password').value).to eq 'test1234'    
            end

            it 'test to click button' do
                click_on('Log in')
                expect(current_path).to eq mailbox_inbox_path
            end

        # it 'displays username in Hello message' do
        #     expect(page).to have_content 'Hello'
        # end

        # it 'displays logout link' do
        #     expect(page).to have_content 'Logout'
        # end

        # it 'redirects to root path' do
        #     expect(current_path).to eq welcome_index_path
        # end

        # it 'shows a link to forgot your pasword' do
        #     expect(page).to have_link 'Forgot your password?'
        # end

        # it 'displays welcome message' do
        #     expect(page).to have_content 'Hello, Blake'
        # end
    
        # it 'redirects to root path' do
        #     expect(current_path).to eq root_path
        # end

    end

end