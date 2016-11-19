class Fixnum
  def stringify(b)
    p=0
    str = ""
    digit_nums = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"]
    while (self / b**p) > 0
      p b**p
      str = digit_nums[((self / b**p) % b)] + str
      p += 1
    end
    str
  end
end
