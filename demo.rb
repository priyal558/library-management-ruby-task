# $LOAD_PATH << '.'
# require 'admin'

# class Demo
#   @@i=0
#   @@hash_arr = []

# 	def self.register			
# 				while @@i<1 do	
# 					puts "Enter Your Full Name"
# 					     s_name = gets.chomp

# 					 puts "Enter the Password"
# 					     psw = gets.chomp
# 					 puts "Enter the enrollment number"
# 					     e_no = gets.chomp

# 						student_name = {
# 						  Enroll: e_no,
# 						  Student_Name: s_name,
# 						  Password: psw
						  
# 						}
# 						 @@hash_arr.push(student_name)

# 					     @@i = @@i+1
# 				end	
# 			 puts "---------------------Registeration successful-------------------------------"
			
# 			        @@hash_arr.each do |hash| 
				  
# 					  hash.each do |key,value| 
# 					       puts (key.to_s + ': ' + value.to_s)

# 				        end
# 			        end 	
# 	end


# 	def self.login	
# 		puts "enter the enroll number"
# 		 enroll = gets.chomp

# 		 puts "enter the Password"
# 		  password = gets.chomp

# 		    pr = @@hash_arr.index(enroll)
# 		    pg = @@hash_arr.find {|x| x[:name] == enroll}
# 		  if  (pr == true && pg == true )
# 		  	puts "login successful"
# 		  else 
# 		    puts "invalid"	
		  	
# 		  end
		 



# 		# while true
# 		# 	puts "Press 1: To see available books"
# 		# 	puts "Press 2: Request to issue book"
# 		# 	puts "Press 3: Request to return book"
# 		# 	puts "Press 4: exit"
# 		# 	s_inp = gets.chomp

# 		# 	case s_inp
# 		# 		when "1"
# 		# 			# puts "available books code"
# 		# 			Admin.view
# 		# 		when "2"
# 		# 		    puts "request book"
# 		# 		when "3"
# 		# 			puts "return request"
# 		# 		when "4"
# 		# 		    break	
			    		    	
				
# 		# 	end

#    end	
# end 
# obj =   Demo.new 
# Demo.register
# Demo.login