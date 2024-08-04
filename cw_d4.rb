#1 q7 to_s(2) переводит число в строчное число двоичной системы
def add_binary(a,b)
  sum = a + b
  sum.to_s(2)
end

def add_binary(a,b) (a+b).to_s(2) end

#2 q7 сумма двух найменьших чисел массива
def sum_two_smallest_numbers(numbers)
  numbers = numbers.sort
  result = numbers[0] + numbers[1]
end
# в одну строку a.min(2).sum

#3 q7 вернуть мин и макс массива
def min_max(lst)
  lst.minmax
end
def min_max(lst)
  return [lst.min, lst.max]
end

#4 q7 вернуть слова с длиной в 4 буквы
def friend(friends)
  result = []
  
  friends.each do |i|
    result << i if i.length == 4
    end
  result
      
end
# в одну строку  friends.select { |name| name.length == 4 }

#5 сумма от 1 до num
def summation(num)
  (1..num).sum
end

#6 вернуть сумму за хотдоги
def sale_hotdogs(n)
  if n < 5
    n * 100
   elsif n >= 5 and n <10
    n * 95
    else n >= 10
    n * 90
    end
  end
#  n * (n < 5 ? 100 : n < 10 ? 95 : 90)

#7вернуть единственное  уникальное значение
def stray (numbers)
numbers.each do |i|
  return i if numbers.count(i) == 1
  end
end
#в одну строку   arr.each { |x| return x if arr.count(x) == 1}

