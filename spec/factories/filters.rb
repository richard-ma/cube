# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :filter do
    regex "MyString"
    type ""
  end
end
