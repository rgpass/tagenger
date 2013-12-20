require 'spec_helper'

describe UserTag do
  let(:user) { FactoryGirl.create(:user) }
  let(:tag)  { FactoryGirl.create(:tag) }

  let(:user_tag) { user.user_tag.build(tag_id: tag.id) }

  subject { user_tag }

  it { should be_valid }
end
