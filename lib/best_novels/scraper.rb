class BestNovels::Scraper

def self.scrape_novels
  doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  novels = []
  doc.css(".content__article-body.from-content-api.js-article__body p").each do |novel|
  title = novel.css(".u-underline").text
  novels << {title: title}
  end
end


def self.scrape_novel_details(url)
  details = {}
   doc = Nokogiri::HTML(open(url))
   details[:summary] = doc.css("p").text
   novel_url[:novel_url] = novel.css("a").first.attr("href").strip
   details
  end

end
