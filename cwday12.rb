def count_sheep(num)
  result = ""
  return result if num == 0 
  num.times do |i|
    result += "#{i + 1} sheep..."
    end
  result
end

# в одну строку
def count_sheep(num)
  (1..num).map {|i| "#{i} sheep..."}.join
end

#2
def points(games)
  points = 0
  games.each do |c|
  x, y = c.split(":").map(&:to_i)
  if x > y
    points += 3
   elsif x < y
    points += 0
    else x == y
    points += 1
   end
  end
  points
end

#3
def find_it(seq)
  count_c = Hash.new(0)
  
  seq.each do |c|
      count_c[c] += 1
  end
  
  count_c.each do |i, k|
    return i if k.odd?
  end
end
