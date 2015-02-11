# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :instructor do
  	first_name Faker::Name.first_name
  	last_name Faker::Name.last_name
  	github_username Faker::Name.first_name
  end
end
