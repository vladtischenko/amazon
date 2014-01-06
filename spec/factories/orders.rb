# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    totalprice 1.5
    state false
    completed_at "2013-12-26"
    bill_address "Wall st. 15"
    ship_address "Wall st. 10"
    customer nil
  end
end
