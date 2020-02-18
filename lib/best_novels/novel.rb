class BestNovel::Novel
attr_accessor :title,  :novel_url
@@all = []

 def intialize(title, novel_url)
   @title = title
   @novel_url = novel_url
   save
 end

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
