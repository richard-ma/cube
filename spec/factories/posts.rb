# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "Post Title"
    link "http://post.link.com/hello.html"
  end

  factory :valid_post, class: Post do
    title "Valid Post"
    link "http://valid.post.com"
  end

  factory :invalid_post, class: Post do
    title "Invalid Post"
    link "invalid/post@link"
  end

  factory :empty_post, class: Post do
    title ""
    link ""
  end
end
