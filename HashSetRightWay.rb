#Проверка требующая меньшее количество памяти

require 'set'

def f(str)
  english_alphabet_set = Set.new('a'..'z')

  str.each_char do |c|
    english_alphabet_set.delete(c) if english_alphabet_set.include?(c)
  end

  english_alphabet_set.empty?
end

puts f('quick pick black brown fox jumps over the lazy dog')

