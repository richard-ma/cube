# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tutorial do
    rss_feed "http://rss.com/rss"
    title "Tutorial Title"
  end
end
