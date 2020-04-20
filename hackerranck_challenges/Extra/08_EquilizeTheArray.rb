# EquilizeTheArray

def equalizeArray(arr)
  max = 0
  arr.each do |i|
     count = arr.count(i) 
      max = count if count > max
  end
  arr.size - max
end