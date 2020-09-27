# 11. Container With Most Water
# https://leetcode.com/problems/container-with-most-water/

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_container = 0

  (0..height.size - 1).each { |i|
    (1..height.size - 1).each { |j|
      tmp_container = [height[i],height[j]].min * (j-i)
      max_container = [max_container,tmp_container].max
    }
  }

  max_container
end