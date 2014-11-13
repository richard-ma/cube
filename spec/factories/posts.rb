# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "Post Title"
    link "http://post.link.com/hello.html"
  end
end
