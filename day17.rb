def printer_error(s)
  # Подсчитываем количество ошибок
  error_count = s.count('n-z')
  
  # Формируем строку результата
  "#{error_count}/#{s.length}"
end
