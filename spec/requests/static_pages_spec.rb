require 'spec_helper'

describe "StaticPages" do

  describe "FAQ page" do
    it "should have the content 'FAQ'" do
      visit faq_path
      expect(page).to have_content( 'FAQ' )
    end

    it "should have the page title" do
    	visit '/static_pages/faq'
    	expect(page).to have_title('Tagenger | FAQ')
    end
  end
end
