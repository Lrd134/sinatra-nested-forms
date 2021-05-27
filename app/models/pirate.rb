class Pirate
  attr_reader :name, :weight, :height
  @@all = []
  def initialize(args)
    @name = args["pirate"]["name"]
    @weight = args["pirate"]["weight"]
    @height = args["pirate"]["height"]
    save
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def display
    "Pirate Name: #{@name}\nWeight: #{@weight}\nHeight: #{@height}"
  end
end