def measure(t=1, &prc)
  start_time = Time.now
  total_time = 0
  t.times do
    prc.call
    end_time = Time.now
    total_time += (end_time - start_time)
    start_time = end_time
  end
  total_time/t
end