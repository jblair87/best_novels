class BestNovels::Scraper

def self.scrape_novels
  doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  content = doc.css("div.content__article-body").to_a
  content.each.with_index do |novel, i|
  novel = BestNovels::Novel.new
  novel.title = doc.css("p a.u-underline")[i].text
  novel.novel_url = doc.css("p strong a.u-underline")[i].attr("href")
  #novel.summary = new_novel.css("p:nth-of-type(even)").text.gsub("/t", " ").gsub("/n", " ")
  #novels << new_novel
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
