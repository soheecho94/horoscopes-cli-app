#CLI Controller

class Horoscopes::CLI

  def call
    puts "Welcome to daily horoscopes!"
    Horoscopes::Scraper.new.signs
    list_zodiac
    main_menu
    goodbye
  end

  def list_zodiac
    Horoscopes::Zodiacs.all.each.with_index(1) do |sign, index|
      puts "#{index}. #{sign.name}"
    end
  end

  def main_menu
    puts "Please enter the number of your zodiac sign from the list above:"
      input = gets.strip.to_i
      if input <= Horoscopes::Zodiacs.all.size
        puts "Today's Reading:"
        puts Horoscopes::Scraper.new.reading[input - 1].reading
        horoscope_reading
      else
        puts "Looks like that doesn't exist in the stars..."
        main_menu
      end
  end

  def horoscope_reading
    puts "Please type menu for list of zodiac signs or exit to leave:"
    answer = ""
    while answer != "exit"
      answer = gets.strip.downcase
      case answer
      when "menu"
        list_zodiac
        main_menu
      else
        horoscope_reading
      end
    end
  end

  def goodbye
    puts "Come back later for tomorrow's horoscopes! <3"
  end

end
