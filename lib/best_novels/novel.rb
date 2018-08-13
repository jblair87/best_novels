class BestNovel::Novel
attr_accessor :title, :summary, :novel_url

@@all = []

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
