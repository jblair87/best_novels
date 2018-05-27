class BestNovels::CLI
  def call
    BestNovels::Scraper.new.scrape_novels
    puts "Welcome to the 100 Best Novels Gem"
    start
  end

  def list
      puts ""
      puts "The Guardian's Best Novels Ever Written:"
      puts ""
      #BestNovels::Novel.destroy
      BestNovels::Novel.all.each.with_index(1) {|novel, index|
      puts "#{index}. #{novel.title}"}
end

   def print_novel(novel)
     puts ""
     puts "----------#{novel.title}-------------"
     puts ""
     puts "#{novel.summary}"
     puts ""
     puts "Learn more at #{novel.novel_url}"
  end

def start
    input = nil
    while input != "exit"
      puts ""
      puts "Enter 'list' to see the list of novels again"
      puts "Enter 'more info' to learn more about a novel"
      puts "Enter 'exit' to leave the program"
      puts ""
      input = gets.strip
      if input == "list"
      list
     elsif input == "more info"
          puts "What novel would you more information on?"
          input = gets.strip.downcase
          novel = BestNovels::Novel.find(input.to_i)
                if novel
                print_novel(novel)
                else
                  puts "Invalid Entry"
                end
    else input == "exit"
    puts "Goodbye!!!"
      exit
    end
  end
end
end
