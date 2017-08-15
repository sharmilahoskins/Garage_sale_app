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




  context 'Search for item within a city or zip code' do
    Steps 'Search for item' do
      Given 'I am on the sales index page after a city or zip search' do
        visit '/sales?search=92130'
      end
      Then 'I fill in an item' do
        fill_in 'item', with: 'couch'
        click_button 'Search'
      end

       Then "I the url changes to reflect the search" do
        expect(page).to have_current_path("/sales?search=92130&item=couch&hidemap=hidemap")
    end

      Then "I see the couches within San Diego come up" do
          page.has_content?('couch1.png')
          page.has_content?('yellowcouch.png')
          page.has_content?('Striped and floral comfy couch $100')
          page.has_content?('Low back couch with classic yellow fabric $100')

          page.has_content?('Couch, patio furniture, cute clothes and other items')
          page.has_content?('Books and paintings, couch and chairs, come by for a fabulous sale!')
          page.has_content?('Couch, chairs, skateboard, boys clothes. Moving sale, everything must go!')

          page.has_content?('345 F Street Ste 175 San Diego, California')
          page.has_content?('5955 Mira Mesa Blvd. San Diego, CA')
          page.has_content?('13671 Glencliff Way San Diego, CA')
    
    end

  end
end


 
  context 'Search for item within a city or zip code when there is no item' do
    Steps 'Search for item' do
      Given 'I am on the sales index page after a city or zip search' do
        visit '/sales?search=san+diego&item=san+diego&hidemap=hidemap'
      end
      Then 'I fill in item with sled' do
        fill_in 'item', with: 'sled'
        click_button 'Search'
      end

       Then "I the url changes to reflect the search" do
        expect(page).to have_current_path("/sales?search=san+diego&item=sled&hidemap=hidemap")
    end

      Then "I see the message: No sled found" do
          page.has_content?('No sled found')

    end

  end
end


 
  context 'While looking at items click on a link to see the sale details' do
    Steps 'Click on a sale details link' do
      Given 'I am on the sales index page after an item search' do
        visit 'sales?search=san+diego&item=couch&hidemap=hidemap'
      end
      Then 'I click on the Show Sale Details link' do

      page.all(:link,"Show Sale Details")[0].click
      end

       Then "I the url changes to reflect the search" do
        page.has_content?('704 J Street')
        page.has_content?('09-25-2017')
        page.has_content?('Power tools and more!')  
        page.has_content?('saw.jpg')
        page.has_content?('sander.jpg')  

    end





  end
end









end


