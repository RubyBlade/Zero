def get_grade(s1, s2, s3)
  avg = (s1 + s2 + s3) / 3  
   if 90 <= avg && avg <= 100
     return 'A'
    elsif 80 <= avg && avg < 90
     return 'B'
    elsif 70 <= avg && avg < 80 
     return 'C'
    elsif 60 <= avg && avg < 70 
     return 'D'
    else 0 <= avg && avg < 60 
     return 'F'
  end
end

#второй вариант решения
def get_grade(s1, s2, s3)
  case (s1 + s2 + s3).fdiv 3
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else 'F'
  end
end

#Kata n2
class String
  def is_upcase?
    self == self.upcase
  end
end
#Kata3
def simple_multiplication(number)
  number.even? ? number * 8 : number * 9
end
