class BestNovels::Scraper

def scrape_novels
  doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
doc.css("div.content__article-body").each do |new_novel|
  novel = BestNovels::Novel.new
  novel.title = new_novel.css("p:nth-of-type(1) a.u-underline").text
  novel.novel_url = new_novel.css("p:nth-of-type(odd) strong a.u-underline").attr("href").value
  novel.summary = new_novel.css("p:nth-of-type(even)").text.gsub("/t"," ").gsub("/n"," ")
  #novels << new_novel
  novel.save
  #novel << {title: title, novel_url: novel_url}
end
#def self.scrape_novel_details(novel_url)
#  details = {}
#   doc = Nokogiri::HTML(open(novel_url))
#   doc.css(".content__article-body.from-content-api.js-article__body").each do |summary|

#  summary = doc.css(".content__article-body.from-content-api.js-article__body p").text
#   details
#  end
end
end
