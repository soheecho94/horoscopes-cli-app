class Horoscopes::Readings
  attr_accessor :reading, :name, :number

  def self.reading
    @signs = Horoscopes::Zodiacs.signs
    @signs.each do |sign|
      number = sign.number
      doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=#{number}"))
      sign_reading = doc.css("div.horoscope-content p:first-child").text.strip
      Horoscopes::Zodiacs.signs[number - 1].reading = sign_reading
      @signs << sign_reading
      binding.pry
    end
    @signs
  end

  # hard-code
  # def self.aries
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=1"))
  #   aries_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   aries = Horoscopes::Zodiacs.signs[0]
  #   aries.reading = aries_reading
  #   Horoscopes::Zodiacs.signs << aries.reading
  #   aries.reading
  # end
  #
  # def self.taurus
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=2"))
  #   taurus_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   taurus = Horoscopes::Zodiacs.signs[1]
  #   taurus.reading = taurus_reading
  #   Horoscopes::Zodiacs.signs << taurus.reading
  #   taurus.reading
  # end
  #
  # def self.gemini
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=3"))
  #   gemini_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   gemini = Horoscopes::Zodiacs.signs[2]
  #   gemini.reading = gemini_reading
  #   Horoscopes::Zodiacs.signs << gemini.reading
  #   gemini.reading
  # end
  #
  # def self.cancer
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=4"))
  #   cancer_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   cancer = Horoscopes::Zodiacs.signs[3]
  #   cancer.reading = cancer_reading
  #   Horoscopes::Zodiacs.signs << cancer.reading
  #   cancer.reading
  # end
  #
  # def self.leo
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=5"))
  #   leo_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   leo = Horoscopes::Zodiacs.signs[4]
  #   leo.reading = leo_reading
  #   Horoscopes::Zodiacs.signs << leo.reading
  #   leo.reading
  # end
  #
  # def self.virgo
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=6"))
  #   virgo_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   virgo = Horoscopes::Zodiacs.signs[5]
  #   virgo.reading = virgo_reading
  #   Horoscopes::Zodiacs.signs << virgo.reading
  #   virgo.reading
  # end
  #
  # def self.libra
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=7"))
  #   libra_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   libra = Horoscopes::Zodiacs.signs[6]
  #   libra.reading = libra_reading
  #   Horoscopes::Zodiacs.signs << libra.reading
  #   libra.reading
  # end
  #
  # def self.scorpio
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=8"))
  #   scorpio_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   scorpio = Horoscopes::Zodiacs.signs[7]
  #   scorpio.reading = scorpio_reading
  #   Horoscopes::Zodiacs.signs << scorpio.reading
  #   scorpio.reading
  # end
  #
  # def self.sagittarius
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=9"))
  #   sagittarius_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   sagittarius = Horoscopes::Zodiacs.signs[8]
  #   sagittarius.reading = sagittarius_reading
  #   Horoscopes::Zodiacs.signs << sagittarius.reading
  #   sagittarius.reading
  # end
  #
  # def self.capricorn
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=10"))
  #   capricorn_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   capricorn = Horoscopes::Zodiacs.signs[9]
  #   capricorn.reading = capricorn_reading
  #   Horoscopes::Zodiacs.signs << capricorn.reading
  #   capricorn.reading
  # end
  #
  # def self.aquarius
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=11"))
  #   aquarius_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   aquarius = Horoscopes::Zodiacs.signs[10]
  #   aquarius.reading = aquarius_reading
  #   Horoscopes::Zodiacs.signs << aquarius.reading
  #   aquarius.reading
  # end
  #
  # def self.pisces
  #   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=12"))
  #   pisces_reading = doc.css("div.horoscope-content p:first-child").text.strip
  #   pisces = Horoscopes::Zodiacs.signs[11]
  #   pisces.reading = pisces_reading
  #   Horoscopes::Zodiacs.signs << pisces.reading
  #   pisces.reading
  # end

end
