# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :credit_card do
    number 5588320123456787
    cvv 123
    firstname "Ivan"
    lastname "Sidorov"
    expiration_month "December"
    expiration_year 2015
    customer nil
    order nil
  end
end
