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
      if input > 0 && input <= 12
        horoscope_reading
      else
        puts "Looks like that doesn't exist in the stars..."
        main_menu
      end
    end

  def horoscope_reading
    puts "Please choose a horoscope reading or type menu for list of zodiac signs or exit to leave:"
    puts "A. Sun Sign"
    puts "B. Love"
    puts "C. Career"
    input = ""
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "a"
        puts "Sun Sign:"
      when "b"
        puts "Love:"
      when "c"
        puts "Career:"
      when "menu"
        list_zodiac
        main_menu
      end
    end
  end

  def goodbye
    puts "Come back later for tomorrow's horoscopes! <3"
  end

end
