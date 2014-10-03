require 'rails_helper'

RSpec.describe "filters/edit", :type => :view do
  before(:each) do
    @filter = assign(:filter, Filter.create!(
      :regex => "MyString",
      :type => ""
    ))
  end

  it "renders the edit filter form" do
    render

    assert_select "form[action=?][method=?]", filter_path(@filter), "post" do

      assert_select "input#filter_regex[name=?]", "filter[regex]"

      assert_select "input#filter_type[name=?]", "filter[type]"
    end
  end
end
