require 'nokogiri'
class Coffee::Roast

  @@roasts = []
  attr_accessor :name, :common_roast_names, :notes, :surface, :flavor

  def self.roasts(url)
    self.scrape_wikipedia(url)
  end

  def self.scrape_wikipedia(url)

    doc = Nokogiri::HTML(open(url))
    table = doc.css(".wikitable")[1]
    table_rows = table.css("tr")
    table_rows.each_with_index do |a, index|
      if index > 0
        roast = Coffee::Roast.new
        roast.name = a.css("th").text.chomp
        roast.common_roast_names = a.css("td")[0].text
        roast.notes = a.css("td")[1].text
        roast.surface = a.css("td")[2].text
        roast.flavor = a.css("td")[3].text
        @@roasts << roast
      end
    end
    @@roasts
  end

end
