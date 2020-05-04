def encryption(s)
  row = 0
  column = 0

  #string_square = Math.sqrt(s.size).to_i
  if Math.sqrt(s.size) == Integer.sqrt(s.size)
    p row = Integer.sqrt(s.size)
    p column = Integer.sqrt(s.size)
  else
    row = Integer.sqrt(s.size)
    column = row + 1
    row += 1 if row * column < s.size
  end

  grid = s.split('').each_slice(column).to_a
  result = ''

  grid[-1] << ' ' until grid[-1].size == column
  grid.transpose.each do |i|
    result += i.join('').strip + ' '
  end
  result
end
