class Crawler < ActiveRecord::Base
  def crawl tutorial
    feed = self._crawl tutorial.rss_feed
    posts = self._parse feed

    # filtering
    filters = tutorial.filters

    posts.each do |post|
      acceptFlg = true

      filters.each do |filter|
        if not filter.accept? post
          acceptFlg = false # post will not accpet
        end
      end

      if acceptFlg
        tutorial.posts << post # append post to tutorial posts
      end
    end
  end

  def _crawl rss
    require 'open-uri'
    feed = Feedjira::Feed.fetch_and_parse(rss)
    return feed
  end

  def _parse feed
    items = feed.entries
    posts = []
    items.each do |item|
      post = self._parseItem item
      posts << post
    end

    return posts
  end

  def _parseItem item
    title = item.title
    link = item.url
    return Post.new :title => title, :link => link
  end
end
