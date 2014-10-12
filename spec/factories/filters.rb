# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :any_title_will_accept_filter do
    filter_type Filter::TITLE_FILTER
    regex '.*'
  end

  factory :any_link_will_accept_filter do
    filter_type Filter::LINK_FILTER
    regex '.*'
  end
end
