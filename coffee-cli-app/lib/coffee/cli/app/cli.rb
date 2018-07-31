# Our cLi controller
class Coffee::CLI

  def call
    puts "Looking for information about coffee roasts?"
    input = gets.strip.downcase
    if input == "yes"
      list_coffee
      menu
    end
  end

  def list_coffee

    puts "Choose which roast you would like to learn more about"
    puts <<-DOC.gsub /^\s*/, ''
      Light
      Medium
      Dark
    DOC
  end

  def menu
    input = nil
    url = "https://en.wikipedia.org/wiki/Coffee_roasting"
    @roasts = Coffee::Roast.roasts(url)
    while input != "Exit"

      input = gets.strip.capitalize

      case input
      when "Dark", "Medium", "Light"
        puts "-"*30
        output = @roasts.detect { |i|
          i.name == input
        }
        puts "Roast:"
        puts "Name: #{output.name}"
        puts "Common Roast Names: #{output.common_roast_names}"
        puts "Notes: #{output.notes}"
        puts "Surface: #{output.surface}"
        puts "Roast Flavor: #{output.flavor}"
        puts "-"*30
        puts "Type list to see the options or exit."
      when "list"
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
