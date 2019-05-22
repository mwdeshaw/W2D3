#my_uniq
def my_uniq(arr)
  uniques = []

  arr.each do |ele|
    uniques << ele unless uniques.include?(ele)
  end

  uniques
end

#two_sum
class Array

  def two_sum
    sum_to_zero = []

    (0...self.length-1).each do |i|
      (i+1...self.length).each do |j|
        sum_to_zero << [i, j] if self[i] + self[j] == 0
      end
    end
    sum_to_zero
  end

end 

#transposed
def my_transpose(arr)
  transposed = []

  (0...arr.length).each do |i|
    sub_arr = []
    arr.each do |ele|
      sub_arr << ele[i]
    end

    transposed << sub_arr
  end

  transposed
end

#stock_picker

def stock_picker(arr)
  pair = []
  profit = 0

    (0...arr.length-1).each do |i|
      (i+1...arr.length).each do |j|
        if arr[j] - arr[i] > profit
          profit = arr[j] - arr[i]
          pair = [i, j]
        end 
      end
    end
    pair
    
end