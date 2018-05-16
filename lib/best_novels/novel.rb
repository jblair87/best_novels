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

  def self.find(id)
    self.all[id-1]
  end

  def self.find_by_name(name)
    self.all.detect do |m|
      m.name.downcase.strip == name.downcase.strip ||
      m.name.split("(").first.strip.downcase == name.downcase.strip
    end
  end

private

def scrape_best_novels
  guardian = Nokogiri::HTML(open("https://www.theguardian.com/books/2015/aug/17/the-100-best-novels-written-in-english-the-full-list"))
    guardian.css(".content__article-body").collect do |novel|
      novel_info = {
        :title => novel.css(".u-underline").text,
        :author => novel.css("p").text.strip,
        :year => novel.css("p").text.strip,
  :summary => novel.css("p").text

      }

      novel_info
    end
  end



end
