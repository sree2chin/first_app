require 'spec_helper'

describe "StaticPages" do
  describe "home page" do

    it "should have the content 'sample app'" do

      visit '/static/home'
      page.should have_selector('h1', :text => 'sample app')

     end

     it "should have the right title" do

      visit '/static/home'
      page.should have_selector('title', :text => 'ROR sample app | home')

     end

  end    

  describe "help page" do

    it "should have the content 'help'" do

      visit '/static/help'
      page.should have_selector('h1', :text => 'help')

     end

     it "should have the right title" do

      visit '/static/help'
      page.should have_selector('title', :text => 'ROR sample app | help')

     end

  end   

  describe "about page" do

    it "should have the content 'about'" do

      visit '/static/about'
      page.should have_content('about')

     end

     it "should have the right title" do

      visit '/static/about'
      page.should have_selector('title', :text => 'ROR sample app | about')

     end

  end   

end
