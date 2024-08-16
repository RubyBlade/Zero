def lovefunc( flower1, flower2 )
  if flower1.odd? && flower2.even? 
    true
  elsif flower2.odd? && flower1.even?
    true
  else 
    false
  end
end
