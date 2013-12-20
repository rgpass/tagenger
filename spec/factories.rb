FactoryGirl.define do
  factory :user do
    sequence(:first_name)  { |n| "Person-#{n}" }
    last_initial	 "U"
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
    tndcheck			 true

    factory :admin do
    	admin true
    end
  end

  factory :tag do
    sequence(:tag_number) { |n| "GA123#{n}"}
  end
end