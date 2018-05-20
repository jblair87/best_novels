class BestNovels::Novel
  attr_accessor :title, :summary, :url
 @@all = []

def initialize(title, summary, url)
  @title = title
  @summary = summary
  @url = url
   @@all << self
end

  def self.all
   @@all
   end 

  def self.find(input)
     self.all[input-1]
   end
end
