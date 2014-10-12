class Post < ActiveRecord::Base
  belongs_to :tutorial

  def valid?
    require 'uri'
    if not self.link =~ /\A#{URI::regexp}\z/ # http://stackoverflow.com/questions/1805761/check-if-url-is-valid-ruby
      FALSE
    else
      TRUE
    end
  end
end
