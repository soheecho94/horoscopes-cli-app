class Horoscopes::Zodiacs
  attr_accessor :name, :number

  def self.signs
   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/index.aspx"))
   list = []
   zodiacs = doc.css("div.row h3").text.split(/(?=[A-Z])/) #returns an array of zodiac signs
  end

end
