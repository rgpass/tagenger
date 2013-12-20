# TODO: Add relationship testing

require 'spec_helper'

describe UserTag do
  let(:user) { FactoryGirl.create(:user) }
  let(:tag)  { FactoryGirl.create(:tag) }

  let(:user_tag) { user.user_tags.build(tag_id: tag.id) }

  subject { user_tag }

  it { should be_valid }

  # TODO: Uncomment this test after reverse table completed
  # describe "When user_id is not present" do
  # 	before { user_tag.user_id = nil }
  # 	it { should_not be_valid }
  # end

  # TODO: Uncomment this test after reverse table completed
  # describe "When tag_id is not present" do
  # 	before { user_tag.tag_id = nil }
  # 	it { should_not be_valid }
  # end
end
