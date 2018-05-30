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

def save
  @@all << self
end

def self.find(id)
   @@all[id.to_i-1]
 end


end
