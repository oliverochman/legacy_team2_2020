require "rails_helper"

feature 'User to se an inbox' do
    before do
        visit mailbox_inbox_path
end

    it 'shows a inbox to the user' do
    expect(page).to have_content 
    end

end