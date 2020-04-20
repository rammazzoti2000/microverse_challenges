# DrawingBook

#Main Solution
def pageCount(n, p)
  turn_page = (n / 2) - (p / 2) > (p / 2) ? p / 2 : (n / 2) - (p / 2)
end

# Alternative Solution
def pageCount(n, p)
  turn_page = (n / 2) - (p / 2)

  if turn_page > p / 2
    turn_page = p / 2
  end
  turn_page
end