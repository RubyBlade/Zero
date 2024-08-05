def expanded_form(number)
  digits = number.to_s.chars.map(&:to_i)  # Преобразуем число в массив его цифр
  expanded_parts = []  # Массив для хранения частей развернутой формы

  digits.each_with_index do |digit, index|
    # Вычисляем позицию текущей цифры
    place_value = 10 ** (digits.length - index - 1)
    # Если цифра не равна нулю, добавляем ее развернутую форму в массив
    expanded_parts << (digit * place_value).to_s unless digit == 0
  end

  # Соединяем части развернутой формы с помощью " + " и возвращаем как строку
  expanded_parts.join(' + ')
end

# Примеры использования функции:
puts expanded_form(12)    # Вывод: '10 + 2'
puts expanded_form(42)    # Вывод: '40 + 2'
puts expanded_form(70304) # Вывод: '70000 + 300 + 4'
