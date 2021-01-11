$LOAD_PATH << '.'
require 'admin'
# gem 'lolize'
# require 'lolize/auto'
require 'book_request'

$hash_arr = []

class Student_module
	@@e_no = 100
	def self.register			
		puts "Enter Your Full Name"
		s_name = gets.chomp

		puts "Enter the Password"
		psw = gets.chomp
				
		student_name = {
			Enroll: @@e_no,
			Student_Name: s_name,
			Password: psw	  
		}
		$hash_arr.push(student_name)
		@@e_no = @@e_no+1
		puts "---------------------Registeration successful-------------------------------"
		$hash_arr.each do |hash| 
			hash.each do |key,value| 
				print( (key.to_s + ': ' + value.to_s)	,"\t")
			end			
		end 	
	end

	def self.login		
		puts "enter the enroll number"
		enroll = gets.chomp.to_s
		
		puts "enter the Password"
		password = gets.chomp.to_s

		$hash_arr.each do |hash|
			hash.each do |key,value| 
				if key == :Enroll && value == enroll
					if hash[:Password] == password
						puts "----------------------login successful------------------------"
		    		while true
							puts "Press 1: To see available books"
							puts "Press 2: Request to issue book"
							puts "Press 3: Request to return book"
							puts "Press 4: exit"
							s_inp = gets.chomp
							case s_inp
								when "1"								
									Admin.view
								when "2"
									Admin.view
									Book_request.issue_request																	  
								when "3"
									puts "------------Generate return request------------"
									Book_request.return_request
								when "4"
								  break	    		    	
							end		    			    	
	    	    end
					else
					  puts "invalid password"	
					  break
	  			end 
	  		else
	  			puts "First register yourself"''
	  			break	    	
	  		end #enroll if		
	  	end	
	  end		  
	end #method ending	
end   