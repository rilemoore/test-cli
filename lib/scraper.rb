class Scraper
  
  def self.scrape_games
    html = open("https://serenesforest.net/")
    doc = Nokogiri::HTML(html)
        binding.pry
  end
  
end

#doc.css("li.widget")[3].text.split("\n")