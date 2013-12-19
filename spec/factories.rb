FactoryGirl.define do
  factory :user do
    first_name     "Example"
    last_initial	 "U"
    email  			   "foo@bar.com"
    tag						 "GA123456"
    password 			 "foobar"
    password_confirmation "foobar"
    tndcheck			 true
  end
end