# 接水管小游戏数据包

本数据包支持版本：26.1.2

官方命名空间: `pipes`

## 使用命令直接生成接水管谜题

- 你可以使用以下方式指定网格的宽度和高度，并生成一道接水管谜题：
  ```mcfunction
  function pipes:generate/random {w:<宽度>,h:<高度>}
  ```

- 允许使用种子以生成固定的谜题：
  ```mcfunction
  function pipes:generate/seed {w:<宽度>,h:<高度>,seed:<种子>}
  ```

  上述传入的数据都应为整型。

- 上一次生成的谜题可用过以下命令恢复：
  ```mcfunction
  trigger pipes.trigger set 2
  ```

  但仅限上一次的谜题，在此之前的谜题无法恢复。

## 接水管小游戏本体操作

- 调出接水管小游戏主界面的方式：
  ```mcfunction
  trigger pipes.trigger set 1
  ```

- 快速生成以下大小的接水管：
  | 大小 | 命令 |
  | --- | --- |
  | $4 \times 4$ | `trigger pipes.trigger set 4` |
  | $5 \times 5$ | `trigger pipes.trigger set 5` |
  | $6 \times 6$ | `trigger pipes.trigger set 6` |
  | $7 \times 7$ | `trigger pipes.trigger set 7` |
  | $8 \times 8$ | `trigger pipes.trigger set 8` |
  | $9 \times 9$ | `trigger pipes.trigger set 9` |
  | $10 \times 10$ | `trigger pipes.trigger set 10` |
  | $11 \times 11$ | `trigger pipes.trigger set 11` |
  | $12 \times 12$ | `trigger pipes.trigger set 12` |
  | $13 \times 13$ | `trigger pipes.trigger set 13` |
  | $14 \times 14$ | `trigger pipes.trigger set 14` |
  | $15 \times 15$ | `trigger pipes.trigger set 15` |
  | $16 \times 16$ | `trigger pipes.trigger set 16` |

- 以下设置可以调整：
  - 是否在谜题完成时显示本次所用的时间：
    - 开：`trigger pipes.trigger set 99991`
    - 关：`trigger pipes.trigger set 99990`

## 可定制化

- 