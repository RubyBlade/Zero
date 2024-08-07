1
def remove_every_other(arr)
  result = []
  arr.each_with_index do |element, index|
    result << element if index.even?
    end
  result
end
#в одну строку   arr.select.with_index { |_,idx| idx.even? }

2
def binary_array_to_number(arr)
  arr.join.to_i(base=2)
end 
