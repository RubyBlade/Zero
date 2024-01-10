class Monkey

 attr_reader :state

 def initialize
  @state = [:sleep, :eat, :poop, :sex, :groom, :fight, :drink, :jump].sample
 end

 def run
  @state = :run
 end

 def stop
  @state = :idle
 end

end

monkeys = Array.new(10) { Monkey.new }
#puts monkeys.inspect

monkeys.each.with_index do |mkey, index|
 puts "Monkey #{index + 1}: #{mkey.state}"
end

