# PickingNumbers

# Main Solution
def pickingNumbers(a)
  a.map{ |x| a.count{ |i| i >= x && i <= x + 1 } }.max
end

# Alternative Solution
def pickingNumbers(a)
counts = a.map{ |x| a.count{ |i| i >= x && i <= x + 1 } }
counts.max
end