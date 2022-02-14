require 'nokogiri'
class Coffee::Scraper

  def self.scrape_wikipedia(url)
    doc = Nokogiri::HTML(open(url))
    table = doc.css(".wikitable")[1]
    table_rows = table.css("tr")
    table_rows[1..3].each do |a, index|

      roast = Coffee::Roast.new
      roast.name = a.css("th").text.chomp
      roast.common_roast_names = a.css("td")[0].text
      roast.notes = a.css("td")[1].text
      roast.surface = a.css("td")[2].text
      roast.flavor = a.css("td")[3].text


    end

  end
end
