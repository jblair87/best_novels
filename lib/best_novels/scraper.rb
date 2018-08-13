class BestNovel::Scraper

def scrape_novels
  @doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  @doc.search("div.content__article-body").each do |n|
  novel = BestNovel::Novel.new
  novel.title = n.search("p a.u-underline").text.strip
  novel.novel_url = n.search("p strong a.u-underline").attr("href").value
  novel.summary = n.search("p:nth-of-type(even)").text
  novel.save
  end
  end


end
