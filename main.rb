require './order'
require './order_service'

order1 = Order.new("Dead Souls", "Vasya")
order2 = Order.new("Three Friend", "Petya")
order3 = Order.new("Wor and Peace", "Senya")
order4 = Order.new("Little Prince", "Kolya")
order5 = Order.new("Wor and Peace", "Vanya")
order6 = Order.new("Hamlet", "Vitya")

#sleep(1)
order1.take_book
order1.take_book
#sleep(1)
order2.take_book
#sleep(1)
order5.take_book
order5.take_book
order5.take_book

orders = []
orders << order1 << order2 << order3 << order4 << order5 << order6
service = OrderService.new(orders)

puts service
exit

#1.
puts "Task 1\n"
puts service.smollest_found
puts "\n\n"
#2.
puts "Task 2\n"
puts service.not_satisfy_orders
puts "\n\n"
#3.
puts "Task 3\n"
book_name = "Wor and Peace"
puts service.who_often_takes_book(book_name)
puts "\n\n"
#4.
puts "Task 4\n"
puts service.most_popular_book
puts "\n\n"
#5.
puts "Task 5\n"
number = 2 # number has to be 1 or 2 or 3 because one of three most popular
puts service.one_of_most_popular(number)
puts "\n\n"
