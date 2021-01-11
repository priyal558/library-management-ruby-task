$LOAD_PATH << '.'
# gem 'lolize'
# require 'lolize/auto'
require 'book_request'
# require 'byebug'
$book_arr = []

class Admin
	@@book_id = 0
	def self.add_books	
		
		puts "Enter the name of book"
		book_name = gets.chomp
		puts "Enter the quantity of books"
		quantity = gets.chomp
		book = {
			book_id: @@book_id,
			Name: book_name.to_s,
			Quantity: quantity.to_i			
		}
		$book_arr.push(book)
		@@book_id = @@book_id+1		
		puts "---------------------Record added successfully-------------------------------"
		$book_arr.each do |hash| 				  
			hash.each do |key,value| 
				print( (key.to_s + ': ' + value.to_s)	,"\t")
			end
			print("\n")
		end 	
	end

	def self.remove_books		
		view
		puts "enter index to delete record"	
		ind = gets.chomp.to_s	
		p $book_arr.delete_if { |h| h["book_id"] == "ind" }
		puts "----------------Record deleted successfully-----------------"

	end	

	def self.view
		puts '------------------Available Book------------------------'
		$book_arr.each do |hash| 
			hash.each do |key,value| 
			$issued_books.each do |n|
				if key == :book_id && hash[:book_id] == n
				  hash[:Quantity] = hash[:Quantity] -1
				  break						
				end	
				break																
			end		
				print( (key.to_s + ': ' + value.to_s)	,"\t ")
			end
			print("\n")
		end 			
	end
	#-----------------------------end of method-------------------------------
end	
