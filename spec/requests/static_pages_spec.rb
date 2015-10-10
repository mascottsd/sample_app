require 'rails_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      # page.should have_content('Sample App')
      page.should have_selector('h1', :text => 'Sample App')
    end
=begin
    it "should have the proper title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: 'Ruby')
    end
=end
  end
  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
  end
end