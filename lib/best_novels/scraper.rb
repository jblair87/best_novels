class BestNovels::Scraper

def self.scrape_novels
  doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  doc.css(".content__article-body.from-content-api.js-article__body p").each do |novel|
  title = novel.css(".u-underline").text
  novel_url = novel.css("a").attr("href").value
  novel << {title: title, novel_url: novel_url}
  end
end


def self.scrape_novel_details(novel_url)
  details = {}
   doc = Nokogiri::HTML(open(novel_url))
   details[:summary] = doc.css(".content__article-body.from-content-api.js-article__body p").text
   details
  end

end
