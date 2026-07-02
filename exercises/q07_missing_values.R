# Q07: 欠測があるときの集計
# 期待：arr_delayの分布の要約（NA除く）を作る

library(dplyr)
library(nycflights13)

# BUG: NAが混じると結果がNAになる
summary_tbl <- flights |>
  summarize(
    mean = mean(arr_delay,na.rm = TRUE),
    median = median(arr_delay,na.rm = TRUE),
    p90 = quantile(arr_delay, 0.9, na.rm = TRUE)
  )

# TODO:
# - それぞれNAを除外して集計する
# - ついでに「NAの割合」も計算
summary_tbl
