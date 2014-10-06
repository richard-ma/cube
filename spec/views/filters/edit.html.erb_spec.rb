require 'rails_helper'

RSpec.describe "filters/edit", :type => :view do
  before(:each) do
    @filter = assign(:filter, Filter.create!(
      :filter_type => "MyString",
      :regex => "MyString"
    ))
  end

  it "renders the edit filter form" do
    render

    assert_select "form[action=?][method=?]", filter_path(@filter), "post" do

      assert_select "input#filter_filter_type[name=?]", "filter[filter_type]"

      assert_select "input#filter_regex[name=?]", "filter[regex]"
    end
  end
end
