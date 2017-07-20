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
      readings = Horoscopes::Readings.reading
      input = gets.strip.to_i
      if readings[input - 1].number == input
        readings[input - 1].reading
        horoscope_reading
      else
        puts "Looks like that doesn't exist in the stars..."
        main_menu
      end
  end

    # hard-code:
    # def main_menu
    #   puts "Please enter the number of your zodiac sign from the list above:"
    #   input = gets.strip.to_i
    #   if input == 1
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.aries
    #     horoscope_reading
    #   elsif input == 2
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.taurus
    #     horoscope_reading
    #   elsif input == 3
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.gemini
    #     horoscope_reading
    #   elsif input == 4
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.cancer
    #     horoscope_reading
    #   elsif input == 5
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.leo
    #     horoscope_reading
    #   elsif input == 6
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.virgo
    #     horoscope_reading
    #   elsif input == 7
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.libra
    #     horoscope_reading
    #   elsif input == 8
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.scorpio
    #     horoscope_reading
    #   elsif input == 9
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.sagittarius
    #     horoscope_reading
    #   elsif input == 10
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.capricorn
    #     horoscope_reading
    #   elsif input == 11
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.aquarius
    #     horoscope_reading
    #   elsif input == 12
    #     puts "Today's reading:"
    #     puts Horoscopes::Readings.pisces
    #     horoscope_reading
    #   else
    #     puts "Looks like that doesn't exist in the stars..."
    #     main_menu
    #   end
    # end

  def horoscope_reading
    puts "Please type menu for list of zodiac signs or exit to leave:"
    input = ""
    while input != "exit"
      input = gets.strip.downcase
      if input == "menu"
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
