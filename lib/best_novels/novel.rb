class BestNovels::Novel
attr_accessor :title, :summary, :novel_url

@@all = []


def self.all
    @@all
  end

def save
  @@all << self
end

def self.find(input)
   self.all[input-1]
end

def self.destroy
  @@all = []
end

end
