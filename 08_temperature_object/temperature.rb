class Temperature
  attr_accessor :f, :c

  def initialize args
    args.each do |key, value|
      instance_variable_set("@#{key}", value) unless value.nil?
    end
  end

  def in_fahrenheit
    f
    f.ftoc
  end

  def in_celsius
    c
  end

  def ftoc(f)
    (f - 32.0) * (5.0/9.0)
  end

  def ctof(c)
    c * (9.0/5.0) + 32
  end

end


a = Temperature.new(:f => 50, :c => 0)
p a.in_fahrenheit