# FizzzBuzz
100.times do |i|
  i+=1
  if i%15==0
      puts "FizzBuzz"
  elsif i%5==0
      puts "Buzz"
  elsif i%3==0
      puts "Fizz"
  else
      puts i
  end
end

# RepeatedString
def repeatedString(s, n)
    
  return n if s.size == 1 && s == 'a'

  total = (s.count('a') * (n/s.size)) + s[0, n % s.size].count('a')
  total
end

#Anagram
def anagram(s)
  s_left = s[0...s.length/2.0].split('')
  s_right = s[s.length/2.0..s.length-1].split('')

  return -1 if s_left.size != s_right.size
  return 0 if counting(s_left.join('')) == counting(s_right.join(''))

  s.split('').each do |elem|
    if s_left.include?(elem) && s_right.include?(elem)
      s_left.delete_at(s_left.index(elem))
      s_right.delete_at(s_right.index(elem))
    end
  end
  (s_left + s_right).size / 2
end

def counting(word)
  count = Hash.new(0)
  word.each_char { |char| count[char] += 1}
  return count
end