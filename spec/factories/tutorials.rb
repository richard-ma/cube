# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tutorial do
    rss_feed "http://rss.com/rss"
    title "Tutorial Title"

    factory :tutorial_with_posts do
      ignore do
        posts_count 5
        filters_count 5
      end

      after(:create) do |tutorial, evaluator|
        create_list(:post, evaluator.posts_count, tutorial: tutorial)
        create_list(:filter, evaluator.filters_count, tutorial: tutorial)
      end
      # TODO build test
    end
  end
end
