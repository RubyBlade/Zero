#Вариант первый (без значения по умолчанию)

string = 'the quick brown fox jumps over the lazy dog'
arr = string.split(' ')

hh = {}
arr.each do |word|
 if hh[word].nil? 
  hh[word] = 1
 else
  hh[word] += 1
 end
end

puts hh.inspect

###############
#Вариант второй (с значением по умолчанию)
###############

string2 = 'the quick brown fox jumps over the lazy dog'
arr2 = string2.split(' ')
hh2 = Hash.new(0)

arr2.each do |word|
 hh2[word] += 1
end

puts hh2.inspect
