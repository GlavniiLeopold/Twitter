
namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Leopold",
      email: "Leopoldglavnii@gmail.com",
       password: "fvbhbylf7",
        password_confirmation: "fvbhbylf7",
admin: true)
20.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
User.create!(name: name,
      email: email,
      password: password,
      password_confirmation: password)
    end
  end
