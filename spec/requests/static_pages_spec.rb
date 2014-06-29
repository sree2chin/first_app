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

  it "should have the right links on the layout" do
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign up')
  end

end
