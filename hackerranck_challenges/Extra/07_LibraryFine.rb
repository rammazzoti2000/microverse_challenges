# LibraryFine

# Main Solution
def libraryFine(d1, m1, y1, d2, m2, y2)
  y1 > y2 ? 10000 : m1 > m2 && y1 == y2 ? (m1-m2) * 500 : d1 > d2 && m1 == m2 && y1 == y2 ? (d1-d2) * 15 : 0
end

# Alternative Solution
def libraryFine(d1, m1, y1, d2, m2, y2)
  if y1 > y2
    return 10000
  elsif m1 > m2 && y1 == y2
    return (m1-m2) * 500
  elsif d1 > d2 && m1 == m2 && y1 == y2
    return (d1-d2) * 15 : 0
  else
    return 0
  end
end