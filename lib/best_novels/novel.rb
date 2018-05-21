class BestNovels::Novel
attr_accessor :title, :summary, :novel_url

@@all = []

def initialize(title = nil, summary = nil,  novel_url = nil)
  @title = title
  @summary = summary
  @novel_url = url
   @@all << self
end

def self.all
    @@all
  end

  def self.all_clear
    @@all.clear
  end


  def self.find(input)
     self.all[input-1]
   end


   def details
       info = BestNovels::Scraper.scrape_novel_details
       self.summary = info.values_at(:summary).join
       puts "#{self.summary}"
     end

end
