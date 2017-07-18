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
      input = gets.strip
      case input
      when "1"
        horoscope_reading
      when "2"
        horoscope_reading
      when "3"
        horoscope_reading
      end
    end
  end

  # def today_match
  #   puts "Today's Matches:"
  #   puts "Love - "
  #   puts "Friendship - "
  #   puts "Career - "
  #   puts "------------"
  #   horoscope_reading
  # end

  def horoscope_reading
    puts "Please choose a horoscope reading or type menu for the list of zodiac signs or exit to leave:"
    puts "A. Sun Sign"
    puts "B. Love"
    puts "C. Career"
    answer = ""
    while answer != "exit"
      answer = gets.strip.downcase
      case answer
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

  def goodbye
    puts "Come back later for tomorrow's horoscopes! <3"
  end

end
