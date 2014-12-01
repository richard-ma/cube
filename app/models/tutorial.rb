class Tutorial < ActiveRecord::Base
  has_many :filters
  has_many :posts

  validates :rss_feed, presence: TRUE
  validates :title,    presence: TRUE
  require 'uri'
  validates :rss_feed,  format: {with: /\A#{URI::regexp}\z/} # http://stackoverflow.com/questions/1805761/check-if-url-is-valid-ruby

  # sync tutorial posts from rss feed
  def sync
    # fetch and parse rss feed
    require 'open-uri'
    feed = Feedjira::Feed.fetch_and_parse(self.rss_feed)

    # get all posts
    items = feed.entries
    posts = []
    items.each do |item|
      post = Post.new :title => item.title, :link => item.url, :created_at => item.published
      posts << post
    end

    # filtering
    posts.each do |post|
      # ignore old posts
      # post.created_at < tutorial.updated_at: post is synced
      # tutorial.created_at < tutorial.updated_at: the tutorial is new to first sync
      next if self.created_at < self.updated_at and post.created_at < self.updated_at

      # filtering
      acceptFlg = true

      self.filters.each do |filter|
        if not filter.accept? post
          acceptFlg = false # post will not accpet
        end
      end

      if acceptFlg
        post.save
        self.posts << post # append post to tutorial posts
      end
    end

    # save tutorial changes and update updated_at
    self.updated_at = Time.now
    self.save
  end
end
