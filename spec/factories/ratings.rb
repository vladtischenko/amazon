# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rating do
    text "this is the best rating"
    rating 1.5
    book nil
    customer nil
  end
end
