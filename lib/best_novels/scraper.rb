class BestNovels::Scraper

def self.scrape_best_novels
  doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
     doc.css("div.content__article-body p").each do |novel|
        novel_info = {
        :title =>  novel.css("u-underline strong a").text,
    :summary => novel.css("p").text
        }
       novel_info
      end
  end
end
