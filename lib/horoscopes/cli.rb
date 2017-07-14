#CLI Controller

class Horoscopes::CLI

  def call
    list_zodiac
    main_menu
    goodbye
  end

  def list_zodiac
    puts "Welcome to daily horoscopes!"
    # get zodiac signs from webpage
    puts "1. Aries: Mar 21 - Apr 19"
    puts "2. Taurus: Apr 20 - May 20"
    puts "3. Gemini: May 21 - Jun 20"
    puts "4. Cancer: Jun 21 - Jul 22"
    puts "5. Leo: Jul 23 - Aug 22"
    puts "6. Virgo: Aug 23 - Sep 22"
    puts "7. Libra: Sep 23 - Oct 22"
    puts "8. Scorpio: Oct 23 - Nov 21"
    puts "9. Sagittarius: Nov 22 - Dec 21"
    puts "10. Capricorn: Dec 22 - Jan 19"
    puts "11. Aquarius: Jan 20 - Feb 18"
    puts "12. Pisces: Feb 19 - Mar 20"
  end

  def main_menu
    puts "Please enter the number of your zodiac sign from the list above:"
    input = gets.strip
    case input
    when "1"
      today_match
    when "2"
      puts today_match
    when "3"
      puts today_match
    end
  end

  def today_match
    puts "Today's Matches:"
    puts "Love - "
    puts "Friendship - "
    puts "Career - "
    puts "------------"
    horoscope_reading
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
