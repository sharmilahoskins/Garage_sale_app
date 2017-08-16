require 'rails_helper'

RSpec.feature "UserRoles", type: :feature do



	  context 'Log in to site' do
    Steps 'Login with user name' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I click on Login' do
        click_link 'Login'
      end

       Then "I am taken to a new page" do
        expect(page).to have_current_path("/users/sign_in")
    end
      
       Then "I can login with my email" do
        fill_in 'user[email]', with: 'amy@gmail.com'
        fill_in 'user[password]', with: 'jstreet'
    end

       Then "I can click Log in" do
        click_button 'Log in'
    end
      Then "I see a message that I signed in succesfully" do
       expect(page).to have_content('Signed in successfully')
        expect(page).to have_content('My Sales')
    end

      Then "I can test out the Admin Link" do
       click_link('User')
       click_link('Admin Page')
    end

      Then "I can see the Admin Page" do
      expect(page).to have_current_path("/admin/index")
      expect(page).to have_content('Users')
      expect(page).to have_content('Email')
      expect(page).to have_content('Role')
  
   
      expect(page).to have_button('Change Role')

    end

    end
  
  end



 context 'Sign up as a new user' do
    Steps 'Signup with a new user name' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I click on Host Sale' do
        click_link 'Host Sale'
      end

       Then "I am taken to a new page" do
        expect(page).to have_current_path("/users/sign_up")
    end
      
       Then "I can login with my email" do
        fill_in 'user[email]', with: 'beth@gmail.com'
        fill_in 'user[password]', with: 'jstreet'
        fill_in 'user[password_confirmation]', with: 'jstreet'
    end

       Then "I can click Sign Up" do
        click_button 'Sign up'
    end
      Then "I see a message that I signed up succesfully" do
       expect(page).to have_content('Welcome! You have signed up successfully')
        expect(page).to have_content('My Sales')
    end

  

    end
  
  end











end


