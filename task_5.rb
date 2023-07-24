# frozen_string_literal: true

def minimum_path_sum(triangle, row = 0, col = 0)
  return triangle[row][col] if row == triangle.length - 1

  left_sum = minimum_path_sum(triangle, row + 1, col)
  right_sum = minimum_path_sum(triangle, row + 1, col + 1)

  triangle[row][col] + [left_sum, right_sum].min
end

triangle = [
  [2],
  [3, 4],
  [6, 5, 7],
  [4, 1, 8, 3]
]

puts minimum_path_sum(triangle)
