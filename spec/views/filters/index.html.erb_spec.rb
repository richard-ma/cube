require 'rails_helper'

RSpec.describe "filters/index", :type => :view do
  before(:each) do
    assign(:filters, [
      Filter.create!(
        :filter_type => "Filter Type",
        :regex => "Regex"
      ),
      Filter.create!(
        :filter_type => "Filter Type",
        :regex => "Regex"
      )
    ])
  end

  it "renders a list of filters" do
    render
    assert_select "tr>td", :text => "Filter Type".to_s, :count => 2
    assert_select "tr>td", :text => "Regex".to_s, :count => 2
  end
end
