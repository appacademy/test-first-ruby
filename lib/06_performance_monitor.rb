def measure(num_times=1)
  start_time = Time.now
  num_times.times { yield }
  return (Time.now - start_time) / num_times
end
