class Horoscopes::Readings

  def self.aries
    doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=1"))
    aries_reading = doc.css("p").text
    aries = Horoscopes::Zodiacs.signs[0]
    aries.reading = aries_reading
    Horoscopes::Zodiacs.signs << aries.reading
    aries.reading
  end

end
