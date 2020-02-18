class BestNovel::Scraper

def self.scrape_novels
  doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  novels = doc.search("div.content__article-body p")
  novels.each do |n|
title = n.search("a.u-underline").text.strip
novel_url = n.search("strong a.u-underline").attr("href").value
  BestNovel::Novel.new(title, novel_url)
  end
  end


end
