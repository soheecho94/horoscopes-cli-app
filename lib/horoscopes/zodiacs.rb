class Horoscopes::Zodiacs
  attr_accessor :name, :number, :reading, :birthday
  @@list = []

  def self.all
    @@list
  end

  def save
    @@list << self
  end
end
