# Timeクラスの利用例
# 現在時刻を取得
now = Time.now
puts now

# 特定の時刻を指定して取得
time = Time.new(2023, 5, 18, 20, 18, 0)
puts time

# 時刻のフォーマットを変換
formatted_time = time.strftime('%Y年%m月%d日 %H時%M分%S秒')
puts formatted_time

# 自国の加算や減算
future_time = time + 60 * 60 * 24 * 30
past_time = time - 60 * 60 * 24 * 30
puts future_time
puts past_time

# Dateクラスの利用例
require 'date'

# 現在の日付を取得
today = Date.today
puts today

# 特定の日付を指定して取得
date = Date.new(2023, 5, 18)
puts date

# 日付のフォーマットを変換
formatted_date = date.strftime('%Y年%m月%d日')
puts formatted_date

# 日付の加算や減算
future_date = date + 30
past_date = date - 30
puts future_date
puts past_date
