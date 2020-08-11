# 6. ZigZag Conversion
# https://leetcode.com/problems/zigzag-conversion/

def convert(s, num_rows)
  # 文字列を格納するための配列を作成
  store = Array.new([s.size, num_rows].min, '')

  # 列をスイッチングするための変数を定義
  cur_low = 0
  go_down = false

  s.chars.each do |c|
    # 文字列を格納
    store[cur_low] = store[cur_low] + c
    # 一番下まで移動したかどうかをみて,スイッチング
    go_down = !go_down if cur_low == 0 || cur_low == num_rows - 1

    cur_low =
        if go_down
          cur_low + 1
        else
          cur_low - 1
        end
  end
  p store.join
end

convert('PAYPALISHIRING', 3)

# ans -> PAHNAPLSIIGYIR