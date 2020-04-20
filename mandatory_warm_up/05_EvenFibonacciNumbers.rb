# EvenFibonacciNumbers

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  prev = 0
  sum = 0
  curr = 2
  while curr <= n
    sum += curr
    prev, curr = curr, prev + (curr * 4)
  end
  p sum
end