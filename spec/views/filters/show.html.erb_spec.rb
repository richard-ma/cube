require 'rails_helper'

RSpec.describe "filters/show", :type => :view do
  before(:each) do
    @filter = assign(:filter, Filter.create!(
      :regex => "Regex",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Regex/)
    expect(rendered).to match(/Type/)
  end
end
