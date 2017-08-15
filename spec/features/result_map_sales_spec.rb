require 'rails_helper'

RSpec.feature "ResultMapSales", type: :feature do

  before :all do
    rake db:seed
  end

	  context 'Search for sales in a city or zipcode' do
    Steps 'Search city or zip' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I fill in a city or zip' do
        fill_in 'search', with: '92130'
        click_button 'Search'
      end

       Then "I am taken to a new page" do
        expect(page).to have_current_path("/sales?search=92130")
    end
       Then "I can see the map" do
        expect(page).to have_css('div#map')
      end
        Then "I see: Wrong city? Search again" do
  
        expect(page).to have_content('Wrong city? Search again')
      end
        Then "I see: Search for Item in: 92130" do
        expect(page).to have_content('Search for Item in: 92130')
      end
        Then 'I can see the search box that says lets user search for items within the city or zip code already chosen"' do
        expect(page).to have_field(:type => 'text')
        expect(page).to have_button("Search")
      end
        Then 'I can see the nav bar menu with the logo, Host Sale & Login' do
          page.has_content?('Host Sale')
          page.has_content?('Login')
          page.has_content?('salelogo.png')
      end

    end
  
  end




  context 'Search for item within a city or zip code' do
    Steps 'Search for item' do
      Given 'I am on the sales index page after a city or zip search' do
        visit '/sales?search=92130'
      end
      Then 'I fill in an item' do
        fill_in 'item', with: 'shoes'
        click_button 'Search'
      end

       Then "I the url changes to reflect the search" do
        expect(page).to have_current_path("/sales?search=92130&item=shoes&hidemap=hidemap")
  
    end

  end
end


  context 'Already searched for zip code 92130' do
    Steps 'Look at all the items' do
      Given 'I am on the sales index page after a search for items within 92130' do
        visit '/sales?search=92130&item=shoes&hidemap=hidemap'
      end

       Then "I see a table with search results" do
        expect(page).to have_content('Item Description')
      end

        Then "I see: Wrong city? Search again" do
        expect(page).to have_content('Wrong city? Search again')
      end
        Then "I see: Search for Item in: 92130" do
        expect(page).to have_content('Search for Item in: 92130')
      end
        Then 'I can see the search box that says lets user search for items within the city or zip code already chosen"' do
        expect(page).to have_field(:type => 'text')
        expect(page).to have_button("Search")
      end
        Then 'I can see the nav bar menu with the logo, Host Sale & Login' do
          page.has_content?('Host Sale')
          page.has_content?('Login')
          page.has_content?('salelogo.png')
      end

    end
  
  end





end


