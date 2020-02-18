class BestNovel::CLI
  def call
    puts "Welcome to the 100 Best Novels Gem"
    BestNovel::Scraper.new.scrape_novels
    start
  end

  def list
        puts ""
      BestNovel::Novel.all.each_with_index do |novel, i|
        puts "#{i+1}. #{novel.title}"
   end
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
        novel =BestNovel::Novel.all[input.to_i-1]
          puts ""
          puts novel.title
          puts ""
          puts "#{novel.summary}"
          puts ""
          puts "Learn more at #{novel.novel_url}"
      else
      puts "Goodbye!!!"
      end
    end
  end
end
