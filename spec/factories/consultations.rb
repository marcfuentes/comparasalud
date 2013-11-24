# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :consultation do
    provider "MyString"
    total_price 1
    pay_price 1
    bond false
    address "MyString"
    phone 1
  end
end
