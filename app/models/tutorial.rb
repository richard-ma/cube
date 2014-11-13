class Tutorial < ActiveRecord::Base
    has_many :filters
    has_many :posts
end
