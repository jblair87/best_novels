class BestNovels::Novel
  attr_accessor :title, :author, :summary

  @@all = []

def initialize(title=nil, author=nil, summary=nil)
  @title = title
  @author = author
  @summary =summary
  @@all << self
end

def self.all
    @@all
  end

  def self.find(id)
    @@all[id.to_i-1]
  end

  def self.find_by_name(name)
    @@all.detect do |m|
      m.name.downcase.strip == name.downcase.strip ||
      m.name.split("(").first.strip.downcase == name.downcase.strip
    end
  end

end
