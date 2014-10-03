# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tutorial do
    rss_feed "MyString"
    title "MyString"
  end
end
