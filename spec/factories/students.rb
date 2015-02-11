# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
  	first_name Faker::Name.first_name
  	last_name Faker::Name.last_name
  	github_username Faker::AddressUS.street_name
  	github_userid Faker::AddressUS.zip_code
  	birthday Faker::Time.date
  	email Faker::Internet.email
  end
end
