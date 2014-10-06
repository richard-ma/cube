require 'rails_helper'

RSpec.describe "filters/new", :type => :view do
  before(:each) do
    assign(:filter, Filter.new(
      :filter_type => "MyString",
      :regex => "MyString"
    ))
  end

  it "renders new filter form" do
    render

    assert_select "form[action=?][method=?]", filters_path, "post" do

      assert_select "input#filter_filter_type[name=?]", "filter[filter_type]"

      assert_select "input#filter_regex[name=?]", "filter[regex]"
    end
  end
end
