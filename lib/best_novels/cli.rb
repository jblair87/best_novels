class BestNovels::CLI
  def call
    start
  end


  def list
    puts ""
      puts "The Guardian's Best Novels Ever Written:"
      puts ""
      BestNovels::Novel.all.each.with_index(1) do |novel, i|
      puts "{i}. #{novel.title} - #{novel.author} - #{novel.year}"
  end
     end


def print_novel(novel)
puts ""
puts "#{novel.title} - #{novel.author} - #{novel.year}"
puts ""
puts novel.description
puts ""
end

def start
    input = nil
    while input != "exit"
      puts ""
       puts "What novel would you like more information on? Enter the title."
      puts ""
      puts "Enter list to see the list of novels again."
      puts "Enter exit to leave the program."
      puts ""
    input = gets.strip.downcase
    if input == "list"
    list
  elsif input.to_i == 0
    if novel = BestNovels::Novel.find_by_name(input)
    print_novel(novel)
    end
  end
 end
 end

def goodbye
  puts "Goodbye"
end
end
