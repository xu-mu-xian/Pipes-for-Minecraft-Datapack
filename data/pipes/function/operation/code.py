class Tile:
  def __init__(self, x, y):
    self.dfn = 0
    self.low = 0
    self.pos = (x, y)
    self.side = bytearray([0, 0, 0, 0])
    self.state = "none"

def neighbours(current_tile: Tile):
  neighbour_tiles = []
  x, y = current_tile.pos
  directions = [
    (-1, 0, 0, 2),
    (0, -1, 1, 3),
    (1, 0, 2, 0),
    (0, 1, 3, 1)
  ]
  for dx, dy, current_side, neighbour_side in directions:
    if (x + dx, y + dy) in grid:
      neighbour_tile = grid[(x + dx, y + dy)]
      if current_tile.side[current_side] == 1 and neighbour_tile.side[neighbour_side] == 1:
        neighbour_tiles.append(neighbour_tile)
  return neighbour_tiles

stack = []
dfn_counter = 0
warn_tiles_count = 0

def dfs(current_tile: Tile, parent: Tile):
  global dfn_counter, stack, warn_tiles_count
  dfn_counter += 1
  current_tile.low = dfn_counter
  current_tile.dfn = dfn_counter
  current_tile.state = "flood"
  stack.append(current_tile)
  for neighbour_tile in neighbours(current_tile):
    if neighbour_tile == parent:
      continue
    if neighbour_tile.state == "none":
      dfs(neighbour_tile, current_tile)
      current_tile.low = min(current_tile.low, neighbour_tile.low)
      if neighbour_tile.low >= current_tile.dfn:
        pop_tiles = []
        while True:
          pop_tile = stack.pop()
          pop_tiles.append(pop_tile)
          if pop_tile == neighbour_tile:
            break
        pop_tiles.append(current_tile)
        if len(pop_tiles) >= 3:
          for t in pop_tiles:
            warn_tiles_count += 1
            t.state = "warn"
    elif neighbour_tile.state == "flood":
      current_tile.low = min(current_tile.low, neighbour_tile.dfn)

grid = {}