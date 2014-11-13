require 'rails_helper'

RSpec.describe "tutorials/edit", :type => :view do
  before(:each) do
    @tutorial = create :tutorial
  end

  it "renders the edit tutorial form" do
    render

    assert_select "form[action=?][method=?]", tutorial_path(@tutorial), "post" do

      assert_select "input#tutorial_rss_feed[name=?]", "tutorial[rss_feed]"

      assert_select "input#tutorial_title[name=?]", "tutorial[title]"
    end
  end
end
