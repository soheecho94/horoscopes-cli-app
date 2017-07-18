class Horoscopes::Zodiacs
  attr_accessor :name, :number, :date, :reading
  @@list = []

  def self.signs
   doc = Nokogiri::HTML(open("https://www.horoscope.com/us/index.aspx"))
   zodiacs = doc.css("div.row h3").text.split(/(?=[A-Z])/) #returns an array of zodiac signs
   zodiacs.each_with_index do |zodiac, index|
    sign = self.new
    sign.name = zodiac
    sign.number = index.to_i + 1
    @@list << sign
   end
  @@list
  end



end
