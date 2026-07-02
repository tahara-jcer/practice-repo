# Q15: ggplot のタイトルと軸ラベルを加える
# 期待：月ごとの平均到着遅延時間の棒グラフを、読みやすいラベル付きで表示する

library(tidyverse)
library(nycflights13)

df <- flights |>
  group_by(month) |>
  summarize(mean_arr_delay = mean(arr_delay, na.rm = TRUE))

# BUG: グラフは描けているが、タイトルと軸ラベルが分かりにくい
df |>
  ggplot(aes(month, mean_arr_delay)) +
  geom_col()+


# TODO:
# - labs() でタイトルをつける
  labs(title = "月ごとの平均到着遅延時間")+
# - x軸を「月」、y軸を「平均到着遅延時間（分）」のように分かりやすくする
  labs(x = "月", y = "平均到着遅延時間（分）")

