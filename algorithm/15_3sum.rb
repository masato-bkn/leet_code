# 15. 3Sum
# https://leetcode.com/problems/3sum/

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  res = []
  nums.sort!

  return res if nums.size.zero?

  nums.size.times do |i|
    if nums[i] > 0
      return res
    end
    if i == 0 || nums[i - 1] != nums[i]
      check_zero_sum(nums, i, res)
    end
  end
  res
end

def check_zero_sum(nums, i, res)
  lo, hi = i + 1, nums.size - 1

  while lo < hi
    sum = nums[i] + nums[lo] + nums[hi]
    if sum < 0
      lo = lo + 1
    elsif sum > 0
      hi = hi - 1
    else
      res << [nums[i], nums[lo], nums[hi]]
      lo += 1
      hi -= 1
      # 重複する値はskip
      while lo < hi && nums[lo] == nums[lo - 1]
        lo = lo + 1
      end
    end
  end
end
p three_sum([0])