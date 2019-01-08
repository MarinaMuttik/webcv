require File.expand_path '../../acceptance_helper.rb', __FILE__

feature "Visit page" do
  # login to http basic auth
  def auth
    name = "marina"
    password = "backg1"
    page.driver.browser.basic_authorize name, password
  end

# chrome webdriver does not appear to work when running js: true
  scenario 'protected work' do
    auth
    visit '/private/workhistory'
    expect(page).to have_css('h2', text: 'Work History')
  end

  scenario 'protected academic' do
    auth
    visit '/private/academichistory'
    expect(page).to have_css('h2', text: 'Academic History')
  end
end
