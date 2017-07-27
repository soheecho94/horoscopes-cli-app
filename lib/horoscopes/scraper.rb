class Horoscopes::Scraper

  def signs
    @doc = Nokogiri::HTML(open("https://www.horoscope.com/us/index.aspx"))
    @doc.css("div.span-2.span-sm-3.span-xs-4.col").each do |signs|
      sign = Horoscopes::Zodiacs.new

      sign.name = signs.css("h3").text
      sign.number = signs.css("a").attribute('href').value.split("=")[1]
      sign.birthday = signs.css("p").text

      sign.save
    end
  end

  def reading
    @list = []
    Horoscopes::Zodiacs.all.each do |sign|
        number = sign.number
        doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=#{number}"))
        sign_reading = doc.css("div.horoscope-content p:first-child").text.strip
        sign.reading = sign_reading
        @list << sign
    end
    @list
  end

end
