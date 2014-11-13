class Post < ActiveRecord::Base
  belongs_to :tutorial

  validates :title, presence: TRUE
  validates :link,  presence: TRUE
  require 'uri'
  validates :link,  format: {with: /\A#{URI::regexp}\z/} # http://stackoverflow.com/questions/1805761/check-if-url-is-valid-ruby

  #def valid?
    #if not self.link =~ /\A#{URI::regexp}\z/ 
      #FALSE
    #else
      #TRUE
    #end
  #end
end
