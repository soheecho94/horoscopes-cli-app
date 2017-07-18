#CLI Controller

class Horoscopes::CLI

  def call
    puts "Welcome to daily horoscopes!"
    list_zodiac
    main_menu
    goodbye
  end

  def list_zodiac
    @list = Horoscopes::Zodiacs.signs
    @list.each do |sign|
      puts "#{sign.number}. #{sign.name}"
    end
  end

  def main_menu
    puts "Please enter the number of your zodiac sign from the list above:"
      input = gets.strip.to_i
      if input == 1
        puts "Today's reading:"
        puts Horoscopes::Readings.aries
        horoscope_reading
      else
        puts "Looks like that doesn't exist in the stars..."
        main_menu
      end
    end

  def horoscope_reading
    puts "Please type menu for list of zodiac signs or exit to leave:"
    input = ""
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "menu"
        list_zodiac
        main_menu
      else
        puts "Please type menu for list of zodiac signs or exit to leave:"
      end
    end
  end

  def goodbye
    puts "Come back later for tomorrow's horoscopes! <3"
  end

end
