class Robot
 attr_accessor :x, :y, :n

 def initialize(options={})
   @x = options[:x] || 0
   @y = options[:y] || 0 
   @n = options[:n] || 0
 end

 def right
  self.x += 1 if @n.even?
 end

 def left
   self.x -= 1 if @n.even?
 end

 def up
   self.y += 1 if @n.odd?
 end

 def down
   self.y -= 1 if @n.odd?
 end
end

# Класс «Командир», который будет командовать и двигать роботов
class Commander
 def move(who)
  m = [:right, :left, :up, :down].sample
  who.send(m) 
 end
end

commander = Commander.new

arr = Array.new(10) { |i| Robot.new(n: i) }

loop do
 puts "\e[H\e[2J"

 (12).downto(-12) do |y|
   (-30).upto(30) do |x|
 
 found = arr.any? { |robot| robot.x == x && robot.y == y }

  if found 
    print '*'
   else
    print '.'
  end
 end
puts
end

  # Каждого робота двигаем в случайном направлении
arr.each do |robot| 
 commander.move(robot)
end

sleep 0.5
end
