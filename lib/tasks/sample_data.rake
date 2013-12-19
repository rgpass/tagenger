namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(first_name: "Gerry",
                 last_initial: "P",
                 email: "rgpass@gmail.com",
                 tag: "GASTYAWSM",
                 password: "admin123",
                 password_confirmation: "admin123",
                 tndcheck: true,
                 admin: true)
    99.times do |n|
      first_name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      tag = "GA1234#{n}"
      password  = "password"
      User.create!(first_name: first_name,
                   last_initial: "T",
                   email: email,
                   tag: tag,
                   password: password,
                   password_confirmation: password,
                   tndcheck: true)
    end
  end
end