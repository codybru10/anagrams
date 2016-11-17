require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('name of the path', {:type => :feature}) do
  it('print words that are anagram of initial input ') do
    visit('/')
    fill_in('testword', :with => 'break')
    fill_in('teststring', :with => 'brake')
    click_button('Submit')
    expect(page).to have_content('brake')
  end
end
