# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cohort do
  	campus Faker::Name.first_name
  	city Faker::AddressUS.city
  	name Faker::Name.name
  	number Faker::AddressUS.zip_code
  end
end
