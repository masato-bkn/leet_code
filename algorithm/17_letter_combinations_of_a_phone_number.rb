# 17. Letter Combinations of a Phone Number
# https://leetcode.com/problems/letter-combinations-of-a-phone-number/

CHAR_HASH = {
    "1": [],
    "2": ["a", "b", "c"],
    "3": ["d", "e", "f"],
    "4": ["g", "h", "i"],
    "5": ["j", "k", "l"],
    "6": ["m", "n", "o"],
    "7": ["p", "q", "r", "s"],
    "8": ["t", "u", "v"],
    "9": ["w", "x", "y", "z"]
}

def letter_combinations(digits)
    return [] if digits.size == 0

    result = []

    # 組み合わせを計算
    backtrack('', digits, result)
    return result
end

# バックトレイス
def backtrack(combination, next_digits, result)
    if next_digits.size == 0
        return result << combination
    else
        for target in CHAR_HASH[next_digits[0].to_sym] do
            backtrack(combination + target, next_digits[1..-1], result)
        end
    end
end

p letter_combinations("23")
