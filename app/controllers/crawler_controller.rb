class CrawlerController < ApplicationController
  def crawl
    tutorials = Tutorial.all
    for tutorial in tutorials
      feed = open(tutorial.rss_feed)

      for f in tutorial.Filter.all
        print f.type
        print f.regex
      end
    end
  end
end
