require 'spec_helper'

describe "StaticPages" do
  describe "home page" do

    it "should have the content 'sample app'" do

      visit '/static/home'
      page.should have_content('sample app')

     end

  end    
end
