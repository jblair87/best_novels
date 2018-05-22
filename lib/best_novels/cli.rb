class BestNovels::CLI
  def call
    puts "Welcome to the 100 Best Novels Gem"
    start
  end

  def list
      puts ""
      puts "The Guardian's Best Novels Ever Written:"
      puts ""
      BestNovels::Scraper.scrape_novels
      BestNovels::Novel.all.each.with_index(1) do |novel, i|
      puts "{i}. #{novel.title}"
    end
  end

   def print_novel(novel)
     puts ""
     puts "#{novel.title}"
     puts ""
     puts "#{novel.summary}"
     puts ""
     puts "Novel information found at #{novel.novel_url}"
  end

def start
    input = nil
    while input != "exit"
      puts ""
      puts "Enter 'list' to see the list of novels"
      puts "Enter 'more info' to learn more about a novel"
      puts "Enter 'exit' to leave the program"
      puts ""
      input = gets.strip
      if input == "list"
      list
     elsif input == "more info"
          puts "What novel would you more information on?"
                if input.to_i == 0
                    novel = BestNovels::Novel.find_by_title(input)
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
