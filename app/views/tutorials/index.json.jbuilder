json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :id, :rss_feed, :title
  json.url tutorial_url(tutorial, format: :json)
end
