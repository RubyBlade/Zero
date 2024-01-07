#Напишите программу, которая считает частотность букв и выводит на экран список букв и их количество в предложении.

str = 'I love Ruby programming language'
arr = str.split('')

hh = Hash.new(0)

arr.each do |symbl|
 hh[symbl] += 1
end

puts hh.inspect
