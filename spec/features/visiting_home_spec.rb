require 'rails_helper'

feature "Visiting Home Index" do
  # uncomment to see specs run 
  # before do
  #   Capybara.default_driver = :selenium_chrome
  # end
  
  scenario "a guest see's the home page first" do
    visit root_url 
    expect(page.has_text?("Welcome to Build a Buddy")).to eql(true)
  end

end