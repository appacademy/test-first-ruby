def reverser (&proc)
  string = proc.call
  string_array = string.split(" ")
  string_array.each {|s| s.reverse!}
  string_array.join(" ")
end

def adder (n=1,&proc)
  n + proc.call
end

def repeater (n=1, &proc)
  n.times do
    proc.call
  end
end