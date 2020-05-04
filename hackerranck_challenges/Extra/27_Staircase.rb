# Complete the staircase function below.
def staircase(n)  
  space = ' '
  hash_tag = '#'

  for i in 1..n
    puts (space * (n - i)) + (hash_tag * i)
  end
end
