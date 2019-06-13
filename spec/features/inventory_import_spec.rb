require 'rails_helper'

feature "Importing Inventory CSV" do
  # uncomment to see specs run 
  # before do
  #   Capybara.default_driver = :selenium_chrome
  # end

  scenario "visit inventory import page" do
    visit '/admin'
    if ENV['HTTP_AUTH_USERNAME'] == nil
      expect(page.has_text?("Welcome")).to eql(true)
    end
  end

end