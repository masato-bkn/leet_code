# 485. Max Consecutive Ones
# https://leetcode.com/problems/max-consecutive-ones/

def find_max_consecutive_ones(nums)
    count = 0
    max_count = 0

    nums.each do |num|
        if num == 1
            count += 1
        else
            max_count = [count, max_count].max
            count = 0
        end
    end
    [count, max_count].max
end

p find_max_consecutive_ones([1,1,0,1,1,1])
