require 'spec_helper'

describe "StaticPages" do
  
  subject { page }

  describe "home page" do

    before {    visit root_path  }
     it { should have_selector('h1', text: 'Super') }
     it { should have_selector('title', text: full_title('')) }
     it { should_not have_selector('title', text:' | home') }
  
  end    

  describe "help page" do
    before { visit help_path}
    it { should have_selector('h1', text: 'help') }
    it { should have_selector('title', text: full_title('help')) }
  end   

  describe "about page" do

     before { visit about_path }
     it { should have_content('about') }
     it { should have_selector('title', text: full_title('about')) }

  end   

  describe "kitchen page" do

     before { visit kitchen_path }
     it { should have_content('kitchen') }
     it { should have_selector('title', text: full_title('kitchen')) }

  end   

  describe "Chefs page" do

     before { visit chefs_path }
     it { should have_content('Chefs') }
     it { should have_selector('title', text: full_title('chefs')) }

  end   

  # describe "Nutrition page" do

  #    before { visit chefs_path }
  #    it { should have_content('Nutrition') }
  #    it { should have_selector('title', text: full_title('nutrition')) }

  # end   

end
