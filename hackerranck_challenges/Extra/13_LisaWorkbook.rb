# Complete the workbook function below.
def workbook(n, k, arr)
  page = 1
  count = 0
  arr.each do |i|
    (1..i).each do |j|
      count += 1 if j == page
      page +=1 if j % k == 0
    end
    page += 1 if i % k != 0
  end
  count
end
