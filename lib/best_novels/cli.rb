class BestNovels::CLI
  def call
    list_novels
    menu
    goodbye
  end

  def list_novels
    puts "The Guardian's Best Novels Ever Written:"
  end

  def menu
    puts "Enter the number of the novel you would to get more info on:"
    input = gets.strip.downcase

    if input.to_i > 0
    puts "More info on novel"
    elsif
    input == "list"
    list_novels
    elsif
    input == "exit"
    goodbye
    else
    puts "Type Menu or Exit to leave program"
  end
 end

def goodbye
  puts "Goodbye"
end
