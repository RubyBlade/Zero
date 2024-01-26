require './lib/shipment'

describe Shipment do
 it 'should raise an error without options' do
  expect { Shipment.total_weight }.to raise_error("Can't calculate weight with empty options") 
 end

 it 'should calculate shipment with only one item' do
  expect(Shipment.total_weight(soccer_ball_count: 1)).to eq(410+29)
  expect(Shipment.total_weight(tennis_ball_count: 1)).to eq(58+29)
  expect(Shipment.total_weight(golf_ball_count: 1)).to eq(45+29)
 end 

 it 'should calculate shipment with multiple items' do
  expect(
      Shipment.total_weight(soccer_ball_count: 3, tennis_ball_count: 2, golf_ball_count: 1)
   ).to eq(1420) 
 end
end


#Проверяемый код:
#module Shipment
# module_function
#
# def total_weight(options={})
#  raise "Can't calculate weight with empty options" if options.empty?
#  a = options[:soccer_ball_count] || 0
#  b = options[:tennis_ball_count] || 0
#  c = options[:golf_ball_count] || 0
#  (a * 410) + (b * 58) + (c * 45) + 29
# end
#end
