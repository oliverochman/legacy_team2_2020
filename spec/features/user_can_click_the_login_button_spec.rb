feature 'User can login' do

    before do
        visit user_session_path
    end

        describe 'happy path' do
           let(:registered_user) { FactoryBot.create(:user) }

            it 'expect to Hello message' do
                fill_in 'Email', with: registered_user.email
                fill_in 'Password', with: 'password1234'
                click_on "Log in"
                expect(page).to have_content 'Signed in successfully.'
            end
    end
end
