class Filter < ActiveRecord::Base
  belongs_to :tutorial

  validates :filter_type, presence: TRUE
  validates :regex, presence: TRUE

  # Filter type constance
  TYPE_TITLE    = 'title'
  TYPE_LINK     = 'link'

  def accept?(post)
    if (self.filter_type == TYPE_TITLE and Regexp.new(self.regex) =~ post.title) or
      (self.filter_type == TYPE_LINK and Regexp.new(self.regex) =~ post.link)
      return true
    else
      return false
    end
  end
end
