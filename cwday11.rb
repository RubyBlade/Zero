#day11
def calculate_years(principal, interest, tax, desired)
  return 0 if desired == principal
  
  p = principal
  i = interest
  t = tax
  d = desired
  year = 0
  
  loop do 
  gross = p * i
  net = gross - (gross * t)
    p += net
    year += 1
    return year if desired <= p
  end
