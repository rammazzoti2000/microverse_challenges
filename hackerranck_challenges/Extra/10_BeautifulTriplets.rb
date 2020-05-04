# Complete the beautifulTriplets function below.
def beautifulTriplets(d, arr)
  triplets = []
  arr.each{ |i| triplets << [i, i + d, i + 2 * d] if ([i, i + d, i + 2 * d] - arr).empty? }
  triplets.count
end
