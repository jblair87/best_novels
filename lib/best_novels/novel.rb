class BestNovels::Novel
attr_accessor :title, :summary, :novel_url

@@all = []

def initialize(title = nil, summary = nil,  novel_url = nil)
  @title = title
  @summary = summary
  @novel_url = novel_url
   @@all << self
end

def self.create(novel_array)
novel_array.each {|novel| self.new(novel)}
end

def self.list_novels
@@all.each.with_index(1) {|novel, index| puts "#{index}. #{novel.title}"}
end

def save
    @@all << self
  end

def self.all
    @@all
  end

  def self.find(input)
     self.all[input-1]
   end

   def self.destroy
      @@all = []
    end


end
