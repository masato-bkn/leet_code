# 3. Longest Substring Without Repeating Characters
# https://leetcode.com/problems/longest-substring-without-repeating-characters/

def length_of_longest_substring(s)
    
    strongest = 0
    tmp = 0

    s.size.times { |x|
        (x+tmp).upto(s.size-1) { |y|
            sub = s[x..y]
            # 重複する文字列がないかの判定
            # [a,b,c,c]
            # sub.size -> 4
            # sub.uniq.size -> 3
            if sub.chars.uniq.size == sub.chars.size
                tmp = sub.size if tmp < sub.size
            else
                break
            end
        }
    }
    p tmp
end

# |1| |2| |3| |4|
#  ↑   ↑   ↑   ↑
# インデックスごとに、確認する