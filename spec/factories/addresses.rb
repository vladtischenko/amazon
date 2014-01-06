# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    address "Wall st"
    zipcode 100039573
    city "New York"
    phone "1-541-754-3010"
    country nil
  end
end
