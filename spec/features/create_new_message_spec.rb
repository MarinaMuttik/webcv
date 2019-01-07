require File.expand_path '../../acceptance_helper.rb', __FILE__

feature "Send a message" do

  scenario 'successful send', js: true do
    visit '/contact'
    expect(page).to have_css('form')
    fill_in 'message[contact_name]', with: 'a' * 20
    fill_in 'message[contact_message]', with: 'b' * 20
    find('#btn').click
    expect(page).to have_selector('p', text: 'successfully sent!')

  end
end
