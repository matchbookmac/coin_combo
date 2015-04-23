require('rspec')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the coin_combo path', {:type => :feature}) do
  it('processes the user entry and returns the necessary amount of coins') do
    visit('/')
    fill_in('change', :with => 0.57)
    click_button('send')
    expect(page).to have_content('2 Quarters 1 Nickels 2 Pennies')
  end
end
