# ElectronicsShop

# Main Solution
result = []
keyboards.each { |i| drives.each { |j| result << i + j  if (i + j) <= b } }
result.empty? ? -1 : result.max

# Alternative Solution
def getMoneySpent(keyboards, drives, b)
  result = []

  keyboards.each do |i|
    drives.each do |j|
      result << i + j  if (i + j) <= b
    end
  end
  result.empty? ? -1 : result.max
end