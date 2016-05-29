def measure(num = 1)
  start = Time.now
  num.times { yield }
  elapsed_time = (Time.now - start) / num
end