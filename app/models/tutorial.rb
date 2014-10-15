class Tutorial < ActiveRecord::Base
  has_many :filter
  has_many :post

  validates :rss_feed, presence: TRUE
  validates :title,    presence: TRUE
  require 'uri'
  validates :rss_feed,  format: {with: /\A#{URI::regexp}\z/} # http://stackoverflow.com/questions/1805761/check-if-url-is-valid-ruby
end
