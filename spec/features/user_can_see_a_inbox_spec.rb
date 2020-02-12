require "rails_helper"

feature 'User to se an inbox' do

    before do
        visit mailbox_inbox_path
    end

    skip 'shows a inbox to the user' do
        expect(page).to have_content 'inbox'
    end

end