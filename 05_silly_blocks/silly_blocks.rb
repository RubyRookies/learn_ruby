def reverser
  yield.split(' ').map { |el| el.reverse }.join(' ')
end

def adder(stuff=1)
  yield + stuff
end

def repeater(count=1)
  count.times do
    yield 
  end
end
























=begin
def reverser
  yield.split(' ').map { |el| el.reverse }.join(' ')
end

def adder(num=1)
  yield + num
end

def repeater(num=1)
  num.times do 
    yield
  end
=end