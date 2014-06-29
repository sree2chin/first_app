require 'spec_helper'

describe "StaticPages" do
  describe "home page" do
    before {    visit root_path  }
    it "should have the content 'sample app'" do
    page.should have_selector('h1', :text => "Chinna's")

     end

     it "should have the base_title" do

      page.should have_selector('title', :text => 'ROR sample app')

     end

     it "should have the not have page_title" do
      visit root_path
      page.should_not have_selector('title', :text => 'home')

     end


  end    

  describe "help page" do

    it "should have the content 'help'" do

      visit help_path
      page.should have_selector('h1', :text => 'help')

     end

     it "should have the right title" do

      visit help_path
      page.should have_selector('title', :text => 'ROR sample app | help')

     end

  end   

  describe "about page" do

    it "should have the content 'about'" do

      visit about_path
      page.should have_content('about')

     end

     it "should have the right title" do

      visit about_path
      page.should have_selector('title', :text => 'ROR sample app | about')

     end

  end   

end
