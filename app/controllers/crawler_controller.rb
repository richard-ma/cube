class CrawlerController < ApplicationController
  def crawl
    require 'rss'
    require 'open-uri'

    tutorials = Tutorial.all
    for tutorial in tutorials
      open(tutorial.rss_feed) do |rss|
        feed = RSS::Parser.parse(rss)
        feed.items.each do |item|
          tutorial.filter.each do |f|
            # TODO save post
          end
          #@methods = item.methods
          #@title = item.title
        end
      end
    end
  end
end
