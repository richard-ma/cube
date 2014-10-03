require 'rails_helper'

RSpec.describe "tutorials/new", :type => :view do
  before(:each) do
    assign(:tutorial, Tutorial.new(
      :rss_feed => "MyString",
      :title => "MyString"
    ))
  end

  it "renders new tutorial form" do
    render

    assert_select "form[action=?][method=?]", tutorials_path, "post" do

      assert_select "input#tutorial_rss_feed[name=?]", "tutorial[rss_feed]"

      assert_select "input#tutorial_title[name=?]", "tutorial[title]"
    end
  end
end
