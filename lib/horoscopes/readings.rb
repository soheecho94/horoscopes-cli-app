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
    end
    @signs
  end

end
