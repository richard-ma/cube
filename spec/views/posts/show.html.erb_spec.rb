require 'rails_helper'

RSpec.describe "posts/show", :type => :view do
  before(:each) do
    @post = create(:post, {:title => "Title", :link => "http://Link.com"})
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/http:\/\/Link\.com/)
  end
end
