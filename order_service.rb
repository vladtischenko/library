require './order.rb'

class OrderService
	attr_accessor :orders

	def initialize(orders = [])
		@orders = orders
	end

  def count_of_order
    @orders.count
  end

  def to_s
    "This instance has #{@orders.count} orders"
  end
  
  def one_of_most_popular(number)
    result = if number == 1
      most_popular_book
    elsif number == 2
      most_popular_book(1)
    elsif number == 3
      most_popular_book(2)
    else
      nil
    end
  end

	def not_satisfy_orders
    orders = @orders.clone
		orders.keep_if {|order| !order.issue_date}.count    
	end

	def most_popular_book(number = 0)
		@orders.sort {|o1, o2| o1.count_of_taked <=> o2.count_of_taked}.reverse.slice(number)	
	end

	def smollest_found
		orders = @orders.clone
		orders.keep_if {|order| order.issue_date}
		orders.sort {|o1, o2| o1.issue_date - o1.order_date <=> o2.issue_date - o2.order_date}.first		
	end

	def who_often_takes_book(book_name)
		ar = []
		orders.select {|order| order.book_name == book_name}.each {|order| ar << order.customer_name}
		ar
	end
end
