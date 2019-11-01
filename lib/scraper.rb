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

  end
  
  def self.scrape_game_details(game)
    html = open(game.url)
    doc = Nokogiri::HTML(html)
    game.description = doc.css("p")[0].text
    game.platform = doc.css("tr")[2].css("td")[1].text
    game.release_dates = doc.css("tr")[3].css("td")[1].text
  end
  
end
#doc.css("p")[0].text
#doc.css("tr")[2].css("td").text
#doc.css("li.widget")[3].text.split("\n")
#doc.css("a")[15].attribute("href").value