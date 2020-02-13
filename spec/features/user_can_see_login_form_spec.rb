# frozen_string_literal: true

feature 'User can see the login form' do
  before do
    visit new_user_session_path
  end

  it 'shows a form with input for Email' do
    expect(page).to have_field 'Email'
  end

  it 'shows a form with input for password' do
    expect(page).to have_field 'Password'
  end

  it 'shows a form with a checkbox to remember information' do
    expect(page).to have_field 'Remember me'
  end

  it 'shows a button so we can login' do
    expect(page).to have_button 'Log in'
  end
end
