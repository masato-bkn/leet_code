# 12. Integer to Roman
# https://leetcode.com/problems/integer-to-roman/

ROMAN = {
    "M":  1000,
    "CM": 900,
    "D":  500,
    "CD": 400,
    "C":  100,
    "XC": 90,
    "L":  50,
    "XL": 40,
    "X":  10,
    "IX": 9 ,
    "V":  5,
    "IV": 4,
    "I":  1,
}

def int_to_roman(num)
  tmp = []
  # 0は空文字で返す
  return '' if num.zero?

  # 貪欲法を使う
  # -> A Greedy algorithm is an algorithm that makes the best possible decision at the current time
  ROMAN.each do |symbol, value|
    # 11-(3*3)=2
    count, num = num.divmod(value)
    tmp << symbol.to_s * count
  end
  tmp.join
end

p int_to_roman(300)