require 'rails_helper'

RSpec.describe "filters/show", :type => :view do
  before(:each) do
    @filter = assign(:filter, Filter.create!(
      :filter_type => "Filter Type",
      :regex => "Regex"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Filter Type/)
    expect(rendered).to match(/Regex/)
  end
end
