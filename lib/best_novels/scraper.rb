require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
def scrape_best_novels
  doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
     doc.css("div.content__article-body").collect do |novel|
        novel_info = {
        :title =>  novel.css("p.u-underline strong a").text,
        :author => novel.css("p strong").text,
    :summary => novel.css("p").text
        }
       novel_info
binding.pry
      end
  end
end
Scraper.new.scrape_best_novels
