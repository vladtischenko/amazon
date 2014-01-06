# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    firstname "Vasiliy"
    lastname "Petrov"
    email "vasya@gmail.com"
    password "pvasya"
    password_confirmation "pvasya"
  end
end
