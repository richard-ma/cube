require 'rails_helper'

RSpec.describe "filters/new", :type => :view do
  before(:each) do
    assign(:filter, Filter.new(
      :regex => "MyString",
      :type => ""
    ))
  end

  it "renders new filter form" do
    render

    assert_select "form[action=?][method=?]", filters_path, "post" do

      assert_select "input#filter_regex[name=?]", "filter[regex]"

      assert_select "input#filter_type[name=?]", "filter[type]"
    end
  end
end
