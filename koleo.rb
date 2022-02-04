
puts "Enter value and press enter or type EXIT to finish "

#creates an array
command=""
dictionary=Hash.new()

while (command!= "EXIT") 
    command= gets.chomp
    separated_words=command.split()
    
    if separated_words[0]=="SET"
        dictionary[separated_words[1]]=separated_words[2]
    
    elsif separated_words[0]=="GET"
      if dictionary.has_key?(separated_words[1])
        puts dictionary[separated_words[1]]
      else 
        puts "NULL"
      end
    end 
end   

puts dictionary
