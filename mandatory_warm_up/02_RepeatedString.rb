# RepeatedString
def repeatedString(s, n)
    
  return n if s.size == 1 && s == 'a'

  total = (s.count('a') * (n/s.size)) + s[0, n % s.size].count('a')
  total
end