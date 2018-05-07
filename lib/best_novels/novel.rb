class BestNovel::Novel
  attr_accessor :title, :author, :year, :description, :url

def initialize(title=nil, author=nil, year=nil)
  @title = title
  @author = author
  @year = year
  @@all << self
end

def self.all
  @@all
end

def summary
end

def url
end

end
