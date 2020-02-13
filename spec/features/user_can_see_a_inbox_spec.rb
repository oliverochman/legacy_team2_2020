# frozen_string_literal: true

feature 'User to se an inbox' do
  let(:registered_user) { create(:user) }

  before do
    login_as registered_user
    visit mailbox_inbox_path
  end

  it 'shows a inbox to the user' do
    expect(page).to have_content 'Inbox'
  end
end
