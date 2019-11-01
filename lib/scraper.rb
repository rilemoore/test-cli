class Scraper
  
  def self.scrape_games
    html = open("https://serenesforest.net/")
    doc = Nokogiri::HTML(html)
    count = -1
    doc.css("li.widget")[3].text.split("\n").each do |gamename|
      if(count != -1)
        game = Game.new
        game.name = gamename
        game.url = doc.css("li.widget")[3].css("a")[count].attribute("href").value
      end
      count += 1
    end
    # binding.pry
  end
  
  def self.scrape_game_details(game)
    
  end
  
end

#doc.css("li.widget")[3].text.split("\n")
#doc.css("a")[15].attribute("href").value