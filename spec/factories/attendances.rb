# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attendance do
    event nil
    name "MyString"
    comment "MyString"
    locked 1
  end
end
