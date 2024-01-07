#Напишите программу, которая будет принимать хеш и выводить результат на экран. Убедитесь, что переключатель работает и программа не выводит приход, если переключатель включен.

obh = { client: 'Генадий Блокчейн', balance: 123.45, visibility_filter: :show_out,
 transaction: 
[{description: 'Сапоги', type: 'расход', amount: 40}, 
{description: 'Зарплата', type: 'приход', amount: 1000}, 
{description: 'Продажа ваучера', type: 'приход', amount: 300},
{description: 'Велосипед', type: 'расход', amount: 200},
{description: 'Протез ноги', type: 'расход', amount: 300}] } 


clnt = obh[:client]
blnc = obh[:balance]
v_f = obh[:visibility_filter]

puts "Клиент: #{clnt}, баланс:  #{blnc}"

obh[:transaction].each do |trans|
 desc = trans[:description]
 tp = trans[:type]
 amnt = trans[:amount]

 if v_f == :show_income
  puts "Описание: #{desc}, тип: #{tp}, сумма: #{amnt}"
 elsif v_f != :show_income && tp == 'расход'
  puts "Описание: #{desc}, тип: #{tp}, сумма: #{amnt}"
 end
end
