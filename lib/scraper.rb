class Scraper
  
  def self.scrape_games
    html = open("https://serenesforest.net/")
    doc = Nokogiri::HTML(html)
        binding.pry
    doc.css("li.widget")[3].text.split("\n").each do |gamename|
      game = Game.new
      game.name = gamename
    end

  end
  
end

#doc.css("li.widget")[3].text.split("\n")
#doc.css("a")[15].attribute("href").value