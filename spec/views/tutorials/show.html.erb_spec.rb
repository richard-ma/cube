require 'rails_helper'

RSpec.describe "tutorials/show", :type => :view do
  before(:each) do
    @tutorial = create :tutorial, {:title => "Title", :rss_feed => "http://rss.test/feed"}
  end

  it "must have a NEW badge" do
  end
end
