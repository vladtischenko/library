require 'date'

class Order
	attr_accessor :customer_name, :book_name
	attr_reader :order_date, :count_of_taked, :issue_date

	def initialize(book_name, customer_name)
		@customer_name, @book_name = customer_name, book_name
		@order_date = Time.new#.to_date
		@issue_date = nil
		@count_of_taked = 0
	end

	def take_book
		@issue_date = Time.new#.to_date
		@count_of_taked += 1
	end

	def to_s
		"\nBook name: #{@book_name}\nCustomer name: #{@customer_name}\nOrder date: #{@order_date}\nIssue date: #{@issue_date}\nCount of taked: #{@count_of_taked}\n\n"
	end
end
