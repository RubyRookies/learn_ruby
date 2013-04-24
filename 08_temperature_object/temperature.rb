class Temperature
 def in_fahrenheit
  @degrees_fahrenheit
 end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end