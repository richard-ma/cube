# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin do
    email 'cubeadmin@cube.com'
    password 'cubeadmin'
    password_confirmation 'cubeadmin'
  end
end
