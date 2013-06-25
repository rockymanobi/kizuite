# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    description "MyString"
    from_date "2013-06-25 12:54:06"
    to_date "2013-06-25 12:54:06"
    create_user_name "MyString"
    capacity 1
    deadline "2013-06-25 12:54:06"
  end
end
