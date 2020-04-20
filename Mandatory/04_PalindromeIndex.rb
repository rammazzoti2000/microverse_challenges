# PalindromeIndex

def palindromeIndex(str)
  return -1 if palindrome?(str)

  (str.length/2).times do |i|
    if str[i] != str[-(i+1)]
      
      s_left = str[0...i]
      s_right = str[i+1...str.length]

      return i if palindrome?(s_left + s_right)

      s_left = str[0...-(i+1)]
      s_right = str[(str.length-i)...str.length]

      return str.length-i-1 if palindrome?(s_left + s_right)
    end
  end
end

# helper method
def palindrome?(word)
 word == word.reverse
end