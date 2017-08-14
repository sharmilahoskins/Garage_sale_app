require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do


  context 'Going to website' do
    Steps 'Being welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content("Garage SALE Finder")
      end
    end
  end


end
