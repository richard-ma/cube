# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :filter do
    filter_type Filter::TYPE_TITLE
    regex '.*'
  end

  factory :title_filter, class: Filter do
    filter_type Filter::TYPE_TITLE
    regex '.*'
  end

  factory :link_filter, class: Filter do
    filter_type Filter::TYPE_LINK
    regex '.*'
  end
end
