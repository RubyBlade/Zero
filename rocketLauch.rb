#Центр Управления Полетами поручил вам задание написать метод launch (от англ. «запуск»), который будет принимать набор опций в виде хеша и отправлять в космос астронавтов «Белку» и/или «Стрел- ку».

def launch_Rocket(options={})
 a = options[:angle] || 90
 b = options[:astronauts] || [:belka, :strelka]
 c = options[:delay] || 5

 c.downto(1) do |i|
   puts i
   sleep(1)
 end


 puts "Пуск!"
 puts "Запущен астронавт #{b}, под углом #{a}"

end

x = launch_Rocket(angle: 99, delay: 3)
puts x
