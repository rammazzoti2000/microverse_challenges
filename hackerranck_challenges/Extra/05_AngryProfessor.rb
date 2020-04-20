# AngryProfessor

# Main Solution
def angryProfessor(k, a)
  count = a.select { |i| i <= 0 }.count >= k ? 'NO' : 'YES' 
end

# Alternative Solution
def angryProfessor(k, a)
  count = a.select { |i| i <= 0 }.count
  count >= k ? 'NO' : 'YES'
end