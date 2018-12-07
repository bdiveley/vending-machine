require 'pry'
require 'json'
require './machine.rb'

file = File.read('tiny_vending_machine.json')
contents = JSON.parse(file)["contents"].first
machine = Machine.new()

contents.each do |key, value|
  slot = Slot.new({"position" => key,
                  value.keys.first => value["cost"], value.keys[1] => value["capacity"], value.keys.last => value["contents"]
                  })
  machine.slots << slot
end

puts "Hello, please enter a command:
(c)ontents - Prints the contents of the vending machine.
(i)nsert money - Takes in coins and prints total money inserted.
(v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter.
(p)urchase - Displays a prompt to enter the slot they'd like to purchase."

response = gets.chomp.downcase

if response ==  "c"
  puts "The contents of the vending machine are:"
  machine.slots.each do |slot|
    puts "Position: #{slot.position}"
    puts "Cost: #{slot.cost}"
    puts "Quantity: #{slot.quantity}"
    slot.contents.each do |slot|
      puts "Contents: #{slot["type"]}"
    end
  end

elsif response == "i"
  puts "Please insert coins:"
  money = gets.chomp
  puts "You have inserted #{money}"
  #more logic would go here but ran out of time

elseif response == "v"
  puts "Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter."

elsif response "p"
  #(p)urchase - Displays a prompt to enter the slot they'd like to purchase
else
  puts "Wrong response, please run the program again"
end
