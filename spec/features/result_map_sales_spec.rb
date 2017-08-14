require 'rails_helper'

RSpec.feature "ResultMapSales", type: :feature do

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
        Then "I see Search for Item and Wrong city? Search again on page" do
        expect(page).to have_content('Search for Item')
        expect(page).to have_content('Wrong city? Search again')
      end
      Then "Expect the map to be shown" do
        expect(page).to have_css('div#map')
        expect(page).to have_content('Google')
      end

    end
  end


end


