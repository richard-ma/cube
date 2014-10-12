class Filter < ActiveRecord::Base
  belongs_to :tutorial

  TITLE_FILTER = 'title'
  LINK_FILTER = 'link'

  def accept? (item)
    if (self.filter_type == TITLE_FILTER and item.title =~ /self.regex/) or
      (self.filter_type == LINK_FILTER and item.link =~ /self.regex/)
      return TRUE
    else
      return FALSE
    end
  end
end
