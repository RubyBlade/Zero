#Ввести цену всех товаров в корзине и возможность удовлетворить спрос(со склада)

cart = [ {type: :soccer_ball, qty: 2}, {type: :tennis_ball, qty: 3} ]

inventory = { soccer_ball: {available: 2, price_per_item: 100},
              tennis_ball: {available: 1, price_per_item: 30},
              golf_ball: {available: 5, price_per_item: 5}
            }

total = 0

cart.each do |item|
 type = item[:type]
 qty = item[:qty]

#Проверяем есть ли товар в инвентаре и его цену
 
 if inventory[type]
  available_qty = inventory[type][:available]
  price_item = inventory[type][:price_per_item]
  
  if qty <= available_qty
    total = qty * price_item
    puts "Цена всех товаров в корзине #{total}"
  else
    puts "Недостаточно #{type} товара на складе, доступно #{available_qty}"
  end
 else
  puts "Неизвестный тип товара"
 end
end 
