class Scraper

  def self.scrape_best_novels
doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  end

  def self.scrape_best_novel
    doc = Nokogiri::HTML(open(lesson_url))
  end
  end
