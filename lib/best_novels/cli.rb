class BestNovels::CLI
  def call
    puts "Welcome to the 100 Best Novels Gem"
    start
  end

  def list
        puts ""
        puts "The Guardian's Best Novels Ever Written:"
        puts ""
        #BestNovels::Novel.destroy
        BestNovels::Scraper.scrape_novels
        BestNovels::Novel.all.each.with_index(1) do |novel, index|
        puts "#{index}. #{novel.title}"
   end
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
    list
      input = nil
      while input != "exit"
        puts ""
        puts "Enter 'list' to see the list of novels again"
        puts "Enter the number '1-100' to learn more about a novel"
        puts "Enter 'exit' to leave the program"
        puts ""
        input = gets.strip
      if input == "list"
        list
      elsif input.to_i > 0
          if novel = BestNovels::Novel.find(input.to_i)
          print_novel(novel)
          end
      else
      puts "Goodbye!!!"
      end
    end
  end

end
