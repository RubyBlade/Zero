def productFib(prod)
  # Начальные значения F(n) и F(n+1)
  a, b = 0, 1
  
  # Итерируем, пока произведение не превысит или не станет равным prod
  while a * b < prod
    a, b = b, a + b
  end
  
  # Проверяем, равно ли произведение prod
  if a * b == prod
    [a, b, true]
  else
    [a, b, false]
  end
end
