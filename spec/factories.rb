FactoryGirl.define do
  factory :user do
    sequence(:first_name)  { |n| "Person-#{n}" }
    last_initial	 "U"
    sequence(:email) { |n| "person_#{n}@example.com"}
    sequence(:tag) { |n| "GA1234#{n}"}
    password "foobar"
    password_confirmation "foobar"
    tndcheck			 true

    factory :admin do
    	admin true
    end
  end
end