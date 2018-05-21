class BestNovels::Scraper

def self.scrape_novels
  doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  doc.css(".content__article-body.from-content-api.js-article__body p").each do |novel|
  novel_title = novel.css(".u-underline").text
  novel_url = novel.css("a").first.attr("href").strip
  novels << {title: novel_title, novel_url: novel_url}
  end
end


def self.scrape_novel_details(url)
  details = {}
   doc = Nokogiri::HTML(open(url))
   details[:summary] = doc.css("p").text
   details
  end

end
