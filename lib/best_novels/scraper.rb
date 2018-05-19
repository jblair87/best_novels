class Scraper

def self.scrape_best_novels
  doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  doc.css(".content__article-body.from-content-api.js-article__body p").each do |novel|
  title = novel.css(".u-underline").text
  url = novel.css("a").first.attr("href").strip
  novels << {title: title,  url: url}
  end
end
novels
end
