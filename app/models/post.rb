class Post < ActiveRecord::Base
  belongs_to :tutorial

  validates :title, presence: TRUE

  #if not self.link =~ /\A#{URI::regexp}\z/ # http://stackoverflow.com/questions/1805761/check-if-url-is-valid-ruby
end
