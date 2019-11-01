
class CLI
  
  def run
    puts "Welcome to Fire Emblem Explorer"
    Scraper.scrape_games
    menu
  end
  
  def menu
    puts "Please select a game to examine"
    print_games
    input = gets.strip.downcase
    while input != 'exit' do
      if(input.to_i > 0 && input.to_i < 24)
        if(input == 'menu')
          print_games
        else
          game = Game.all[input.to_i - 1]
          Scraper.scrape_game_details(game) if !game.description
          print_game(game)
          puts "If you would like to see another game, select the number of the game. If you would like to see the list again, type 'menu'. Otherwise type 'exit'"
          input = gets.strip.downcase
        end
      else
        puts "Please enter a valid input (1-23, menu, or exit)."
        input = gets.strip.downcase
      end
      
    end
  end
  
  def print_game(game)
    puts "\n"
    puts "#{game.name} for the #{game.platform}."
    puts "\n"
    puts game.description.strip
    puts "\n"
    puts "Released on #{game.release_dates}."
    puts "\n"
  end
  
  def print_games
    count = 1
    Game.all.each do |game|
      puts "#{count}: #{game.name}"
      count += 1
    end
  end
  
end
