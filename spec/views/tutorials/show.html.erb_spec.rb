require 'rails_helper'

RSpec.describe "tutorials/show", :type => :view do
  before(:each) do
    @tutorial = create :tutorial, {:title => "Title", :rss_feed => "http://rss.test/feed"}
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/http:\/\/rss\.test\/feed/)
    expect(rendered).to match(/Title/)
  end
end
