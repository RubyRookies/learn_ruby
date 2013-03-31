def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  sum = 0
  array.each_with_index do |var|
    sum += var
  end
  sum
end

def multiply(*numbers)
  result = 1
  numbers.each { |number| result *= number }
  result
end

def power(number, exponent)
  result = number ** exponent
  result
end

def factorial(number)
  answer = 1
  if number == 0
    answer
  else 
    (1..number).each do |count|
      answer *= count
    end
  end
  answer 
end

p factorial(10)
p factorial(5)