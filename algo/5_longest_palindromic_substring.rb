# Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.
#
# Example 1:
#   Input: "babad"
#   Output: "bab"
#   Note: "aba" is also a valid answer.
#
# Example 2:
#   Input: "cbbd"
#   Output: "bb"
#
#
# TODO
# -[] 文字列sから回文を見つける
# -[] 一番長い回文を返却する
# -[] 回文が見つからなければ空文字を返す
# 文字数は最大で1000文字

def longest_palindrome(str)
  return str if str == str.reverse
  return str if str.size == 1

  # 回文を見つける
  # |b|a|b|a|d|
  #  b
  #    a b

  panlindromic = ''

  # 文字を1文字ずつ見ていき、回文かどうか判定を行う
  str.size.times do |x|
    (x..str.size).each do |i|
      target = str[x..i+1]
      if target == target.reverse
        panlindromic = target if target.size > panlindromic.size
      end
    end
  end
  return panlindromic
end

p longest_palindrome("babadada")
