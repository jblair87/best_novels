require 'pry'

class BestNovels::Scraper

  def get_page
Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
  end

  def scrape_index
  end

  end
