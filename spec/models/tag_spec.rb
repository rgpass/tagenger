require 'spec_helper'

describe Tag do
  before do
  	@tag = Tag.new(tag_number: "a" * 10)
  end

  subject { @tag }

  it { should respond_to(:tag_number) }
  it { should be_valid }

  describe "When length is too long" do
	  before do
	  	@tag = Tag.new(tag_number: "a" * 11)
	  end

	  it { should be_invalid }
	end

	describe "When is left blank" do
		before do
			@tag = Tag.new(tag_number: " ")
		end

		it { should be_invalid }
	end

	describe "When filled with either letters or numbers" do
		it "Should be valid" do
			tagNumbers = %w[GA123456 WV123ABC9 DE1A2B3C4]
			tagNumbers.each do |validTagNumber|
				@tag.tag_number = validTagNumber
				expect(@tag).to be_valid
			end
		end
	end

	describe "When filled with any non-letter or number" do
		it "Should be invalid" do
			tagNumbers = ['GA!23', 'WV$56', 'DE12 34']
			tagNumbers.each do |invalidTagNumber|
				@tag.tag_number = invalidTagNumber
				expect(@tag).not_to be_valid
			end
		end
	end
end
