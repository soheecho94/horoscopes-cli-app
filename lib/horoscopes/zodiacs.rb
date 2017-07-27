class Horoscopes::Zodiacs
  attr_accessor :name, :number, :reading, :birthday
  @@list = []

  def self.all
    @@list
  end

  def save
    @@list << self
  end

  def self.sort_by_name
    @@list.sort_by {|sign| sign.name}
  end
end
