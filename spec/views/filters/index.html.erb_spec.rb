require 'rails_helper'

RSpec.describe "filters/index", :type => :view do
  before(:each) do
    assign(:filters, [
      Filter.create!(
        :regex => "Regex",
        :type => "Type"
      ),
      Filter.create!(
        :regex => "Regex",
        :type => "Type"
      )
    ])
  end

  it "renders a list of filters" do
    render
    assert_select "tr>td", :text => "Regex".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
