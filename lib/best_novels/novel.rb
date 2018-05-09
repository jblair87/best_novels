class BestNovels::Novel
  attr_accessor :title, :author, :year, :description, :url

  @@all = []

def initialize(title=nil, author=nil, year=nil)
  @title = title
  @author = author
  @year = year
  @@all << self
end

def self.all
  @@all
end

  def self.all
    @@all ||= scrape_best_novels
  end

  def self.find(id)
    self.all[id-1]
  end

  def self.find_by_name(name)
    self.all.detect do |m|
      m.name.downcase.strip == name.downcase.strip ||
      m.name.split("(").first.strip.downcase == name.downcase.strip
    end
  end


def description
end

def url
end


private


def scrape_best_novels
doc = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
end


end
