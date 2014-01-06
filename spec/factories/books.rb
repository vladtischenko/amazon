# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "New Book"
    description "The is the my new book"
    price 1.5
    in_stock true
    author nil
  end
end
