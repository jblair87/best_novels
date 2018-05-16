class BestNovels::CLI
  def call
    list
    start
  end


  def list
    puts ""
      puts "The Guardian's Best Novels Ever Written:"
      puts ""
      BestNovels::Scraper.scrape_best_novels
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
end

def start
    input = nil
    while input != "exit"
      puts ""
       puts "Enter the name of the novel you would like more information on, type 'list' to see the list of novels again or type 'exit' to leave the program"
      puts ""
    input = gets.strip.downcase
    if input == "list"
    list
  elsif input.to_i == 0
    if novel = BestNovels::Novel.find(input.to_i)
    print_novel(novel)
    end
  end
 end
 puts "Goodbye!!!"

end
end
