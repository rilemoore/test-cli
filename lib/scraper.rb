class Scraper
  
  def self.scrape_games
    html = open("https://serenesforest.net/")
    doc = Nokogiri::HTML(html)
        binding.pry
  end
  
end