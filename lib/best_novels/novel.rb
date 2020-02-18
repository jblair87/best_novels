class BestNovel::Novel
@@all = []

attr_accessor :title,  :novel_url


def self.all
    @@all
  end

def save
  @@all << self
end

#def self.find(id)
   #self.all[id-1]
 #end
end
