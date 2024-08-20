# fcitx5-ff14

转换 NGA 贴子 [[幻想科技] [词库] FF14 中文输入法词库 [~6 four 5]](https://ngabbs.com/read.php?tid=31640918)中的 QQ 词库，使用 `libime` 生成 `dict` 二进制文件，便于导入 fcitx5。

- 修改词频为3
- 修改词库文件格式为`汉字 拼音 频率`
- `libime_pinyindict "hetero-qq_cn6.45-modified.txt" "ff14.dict"`
- `ff14.dict ~/.local/share/fcitx5/pinyin/dictionaries`

或者使用 fish 脚本：

```fish
fish convert.fish
```
