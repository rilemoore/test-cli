
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
      game = Game.all[input.to_i - 1]
      #Scraper.scrape_game_details(game)
      puts "If you would like to see another game, select the number of the game. Otherwise type 'exit'"
      input = gets.strip.downcase
    end
  end
  
  def print_games
    count = 1
    Game.all.each do |game|
      puts "#{count}: #{game.name}"
      count += 1
    end
  end
  
end
