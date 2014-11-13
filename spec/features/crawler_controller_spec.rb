require 'rails_helper'

RSpec.describe CrawlerController, :type => :controller do

  describe "GET crawl" do
    it "returns http success" do
      get :crawl
      expect(response).to have_http_status(:success)
    end
  end

end
