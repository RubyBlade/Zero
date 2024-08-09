#Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.
#It should remove all values from list a, which are present in list b keeping their order.

def array_diff(a, b)
  result = []
  a.each do |n|
    result << n unless b.include?(n)
    end
  result
end

#в одну строку
def array_diff(a, b)
  a - b
end
def array_diff(a, b)
  a.difference(b)
end

#q6 tribonacci
def tribonacci(signature,n)
  return [] if n == 0
  return signature.take(n) if n <= 3
  result = signature
 
  (n - 3).times do 
  result << signature[-3..-1].sum
    end
  result
end
