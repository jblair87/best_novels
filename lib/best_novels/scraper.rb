class BestNovels::Scraper

def self.scrape_list_page
  list_page = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  novels = []
  list_page.css(".content__article-body.from-content-api.js-article__body p").each do |novel|
  novel_title = novel.css(".u-underline ").text
  novel_summary = novel.css("p")[2].text
  novel_url = novel.css("a").first.attr("href").strip
  novels << {title: novel_title, summary: novel_summary, url: novel_url}
  end
end
end
