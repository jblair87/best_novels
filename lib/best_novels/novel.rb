class BestNovels::Novel
attr_accessor :title, :summary, :novel_url

@@all = []

def initialize(title = nil, summary = nil,  novel_url = nil)
  @title = title
  @summary = summary
  @novel_url = novel_url
   @@all << self
end

def self.all
    @@all
  end

  def self.find_by_title(input)
    self.all.detect do |n|
      n.title.downcase.strip == title.downcase.strip ||
      n.title.split("(").first.strip.downcase == title.downcase.strip
    end
  end

  def self.all_clear
    @@all.clear
  end


  def self.find(input)
     self.all[input-1]
   end

   

end
