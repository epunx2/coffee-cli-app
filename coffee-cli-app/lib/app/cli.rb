# Our cLi controller
class Coffee::CLI

  # This method will call the other methods in the app
  def call
    puts "Looking for information about coffee roasts?"
    puts "Type yes or no"
    input = gets.strip.downcase
    # If user types yes then the app continues and presents the options
    # and then begins scraping wikipedia and creating Coffee::Roast objects
    if input == "yes"
      list_coffee
      menu
    end
  end

  # Method to list the options the user has
  def list_coffee

    puts "Choose which roast you would like to learn more about:"
    puts <<-DOC.gsub /^\s*/, ''
      Light
      Medium
      Dark
    DOC
  end

  # Method to set the url, call the scraper class, receive the Roast methods,
  # receive input, output the user's choice, the logic to determine what to
  # output to the user.
  def menu
    input = nil
    # Page being scraped
    url = "https://en.wikipedia.org/wiki/Coffee_roasting"
    # This will scrape the wikipedia page and create the objects
    Coffee::Scraper.scrape_wikipedia(url)
    # Retrieves the Roast objects from the Roast class
    @roasts = Coffee::Roast.all

    # This will continue to receive input until the user types exit.
    while input != "Exit"

      input = gets.strip.capitalize
      # This logic determines what to do with the user input
      case input
        # output details of roast object based on input
      when "Dark", "Medium", "Light"
        puts "-"*30
        # find the roast that matches the user input and retrieve
        output = @roasts.detect { |i|
          i.name == input
        }
        puts "Roast:"
        puts "Name:               #{output.name} Roast"
        puts "Common Roast Names: #{output.common_roast_names}"
        puts "Notes:              #{output.notes}"
        puts "Surface:            #{output.surface}"
        puts "Roast Flavor:       #{output.flavor}"
        puts "-"*30
        puts "Type list to see the options again or exit."
      when "List"
        list_coffee
      when "Exit"
        goodbye
      else
        puts "Hey! That won't do anything. Try list or exit!"
      end

    end
    puts "-"*30
  end

  def goodbye
    puts "Thanks for using the app. Try us again soon!"
  end

end
