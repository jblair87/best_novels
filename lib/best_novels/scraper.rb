class BestNovels::Scraper

def scrape_novels
  doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  best_novels = doc.css(".content__article-body.from-content-api.js-article__body").to_a
  best_novels.each.with_index do |novel, i|
  novel = BestNovels::Novel.new
  novel.title = doc.css("p .u-underline")[i].text
  novel.novel_url = doc.css("a")[i].attr("href")
  novel.summary = doc.css("p")[i].text.gsub("/s"," ")
  novel.save
  #novel << {title: title, novel_url: novel_url}
  end
end

#def self.scrape_novel_details(novel_url)
#  details = {}
#   doc = Nokogiri::HTML(open(novel_url))
#   doc.css(".content__article-body.from-content-api.js-article__body").each do |summary|

#  summary = doc.css(".content__article-body.from-content-api.js-article__body p").text
#   details
#  end

end
