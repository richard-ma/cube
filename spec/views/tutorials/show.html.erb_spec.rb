require 'rails_helper'

RSpec.describe "tutorials/show", :type => :view do
  before(:each) do
    @tutorial = assign(:tutorial, Tutorial.create!(
      :rss_feed => "Rss Feed",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rss Feed/)
    expect(rendered).to match(/Title/)
  end
end
