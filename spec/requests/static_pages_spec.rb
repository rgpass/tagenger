require 'spec_helper'

describe "StaticPages" do

  describe "FAQ page" do
    it "should have the content 'FAQ'" do
      visit faq_path
      expect(page).to have_content( 'FAQ' )
    end
  end
end
