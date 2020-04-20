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