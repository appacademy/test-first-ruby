require 'byebug'

ONES = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine"
}
TEENS = {
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen"
}
TENS = {
    2 => "twenty",
    3 => "thirty",
    4 => "forty",
    5 => "fifty",
    6 => "sixty",
    7 => "seventy",
    8 => "eighty",
    9 => "ninety"
}
LARGE = {
    1 => "thousand",
    2 => "million",
    3 => "billion",
    4 => "trillion"
}



class Fixnum

  def in_words
    if self.zero?
      "zero"
    else
      string = ""
      words = ""
      num = self.to_s.split("")
      large = 0
      while num.length > 0
        curr = (num.pop(3)*"").to_i

        if curr > 99
          string << ONES[(curr/100).floor] << " hundred "
          curr = curr % 100
        end

        if curr > 19
          string << TENS[(curr/10).floor] << " "
          curr = curr % 10
        end

        if curr > 9
          string << TEENS[curr] << " "
          curr = 0
        end

        if curr > 0
          string << ONES[curr] << " "
        end

        if large > 0 && string.length > 0
          string << LARGE[large] << " "
        end
        large += 1
        words = string + words
        string = ""

      end
      words.chomp(" ")
    end
  end


end