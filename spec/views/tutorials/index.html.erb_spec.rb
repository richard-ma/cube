require 'rails_helper'

RSpec.describe "tutorials/index", :type => :view do
  before(:each) do
    assign(:tutorials, [
      create(:tutorial, {:rss_feed => "http://rss.test/feed", :title => "Title"}),
      create(:tutorial, {:rss_feed => "http://rss.test/feed", :title => "Title"}),
    ])
  end

  it "renders a list of tutorials" do
    render
    assert_select "h3>a", :text => "Title".to_s, :count => 2
  end
end
