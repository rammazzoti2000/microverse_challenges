# Complete the howManyGames function below.
def howManyGames(p, d, m, s)
  # Return the number of games you can buy
  count = 0
  while s >= p
    count += 1
    s -= p
    p = p - d > m ? p - d : m
  end
  count
end
