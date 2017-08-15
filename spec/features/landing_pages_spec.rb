require 'rails_helper'



RSpec.feature "LandingPages", type: :feature do


  context 'Going to website' do
    Steps 'Being welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can see a welcome message Garage SALE Finder' do
        expect(page).to have_content("Garage SALE Finder")
      end
       Then 'I can see the directions "Find Garage Sales"' do
        expect(page).to have_content("Find Garage Sales")
      end
      Then 'I can see the search box that says lets user search for city or zip code"' do
      expect(page).to have_field(:type => 'text')
        expect(page).to have_button("Search")
      end
      Then 'I can see the background image of grass and a sale sign' do
        page.has_content?('grass_final.png')
      end
      Then 'I can see the favicon' do
        page.has_content?('favicon.ico')
      end
      Then 'I can see the nav bar menu with the logo, Host Sale & Login' do
        page.has_content?('Host Sale')
        page.has_content?('Login')
        page.has_content?('salelogo.png')
      end
    end
  end


end
