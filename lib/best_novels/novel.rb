class BestNovels::Novel
attr_accessor :title, :summary, :novel_url

@@all = []

def initialize
    @@all << self
  end

def self.all
    @@all
  end


def self.reset_all
    @@all.clear
end

def save
  @@all << self
end

#def self.find(id)
   #self.all[id-1]
 #end
end
