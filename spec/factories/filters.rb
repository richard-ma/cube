# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :filter do
    filter_type "MyString"
    regex "MyString"
  end
end
