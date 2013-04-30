require 'time'

def measure(n = 1)
  elapsed_time = 0

  n.times do 
    start_time = Time.now

    yield

    end_time = Time.now
    elapsed_time += end_time - start_time
  end
  
  p elapsed_time / n
end