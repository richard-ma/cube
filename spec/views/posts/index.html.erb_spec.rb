require 'rails_helper'

RSpec.describe "posts/index", :type => :view do
  before(:each) do
    assign(:posts, [
      create(:post, {:title => 'Title', :link => 'http://link.com'}),
      create(:post, {:title => 'Title', :link => 'http://link.com'}),
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "http://link.com".to_s, :count => 2
  end
end
