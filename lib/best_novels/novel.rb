class BestNovels::Novel
  attr_accessor :title, :summary
 @@all = []

 def self.all
   @@all
   end

def initialize(title, summary)
  @title = title
  @summary =summary
   @@all << self
end


  def self.find(id)
     self.all[id-1]
   end
end
