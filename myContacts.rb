#Задайте БД (хеш) своих контактов. Для каждого контакта может быть задано три параметра: email, cell_phone, work_phone. 
#Напишите программу, которая спрашивает фамилию и выводит на экран контактную информацию.

myContacts = { 'ContactName' => ['email', 'cell_phone', 'work_phone'],
               'Zahar' => ['zhvarivoda@mail.com', '+12345', '876'],
               'Dima' => ['dimaye@mail.net', '+56789', '987'], 
               'Nastya' => ['nasthlad@mail.by', '+45678', '456'], 
               'Sasha' => ['sanya@mail.ru', '+77722', '555'],  }

print 'Введите Имя контакта: '
input = gets.chomp

puts "Контактая информация контакта #{input}: #{myContacts[input]} "
