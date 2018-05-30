class BestNovels::Scraper

def scrape_novels
  novels = []
  doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  best_novels = doc.search("div[itemprop='articleBody']")
  best_novels.each do |novel|
  new_novel = BestNovels::Novel.new
  new_novel.title = novel.css("p .u-underline").text
  new_novel.novel_url = novel.css("a").attr("href")
  new_novel.summary = novel.css("p:nth-child(2)").text.gsub("/t"," ").gsub("/n"," ")
  novels << new_novel
  #novel << {title: title, novel_url: novel_url}
  end
  novels
end

#def self.scrape_novel_details(novel_url)
#  details = {}
#   doc = Nokogiri::HTML(open(novel_url))
#   doc.css(".content__article-body.from-content-api.js-article__body").each do |summary|

#  summary = doc.css(".content__article-body.from-content-api.js-article__body p").text
#   details
#  end

end
