puts "Enter commands and press enter or type EXIT to finish "
#creates an array
command=""
#creates hash with names and values 
dictionary=Hash.new()
#creates array of hashes 
list=Array.new()
list.push(dictionary)
#iterator of hash in array
i=0 

while (command!= "EXIT") 
    command= gets.chomp
    separated_words=command.split()

  #set name and value
  if separated_words[0]=="SET"
     list[i][separated_words[1]]=separated_words[2]

  #print value of given key
  elsif separated_words[0]=="GET"
     if list[i].has_key?(separated_words[1])
       puts list[i][separated_words[1]]
     else 
       puts "NULL"
     end

  #delete last input in hash  
  elsif separated_words[0]=="DELETE"
      list[i].delete(separated_words[1])

  #print count number of selected value  
  elsif separated_words[0]=="COUNT"
     if list[i].value?(separated_words[1])
       #puts dictionary.key(separated_words[1])
       puts list[i].values.count(separated_words[1])
     else 
       puts 0
     end

  #start a new transaction
  elsif separated_words[0]=="BEGIN"
    dict_temp = list[i].clone   
    list.push(dict_temp)
      i+=1

  #my command to control list and i  
  elsif separated_words[0]=="PRT"
      puts list
      puts i 

  #delete last transacion  
  elsif separated_words[0]=="ROLLBACK"
      if i==0
        puts "NO TRANSACTION"
      else
        list.pop
        i-=1
      end 

  #commit last transaction  
  elsif separated_words[0]=="COMMIT"
    if i==0
      puts "NO TRANSACTION"
    else
      list[i-1]=list[i]
      list.pop
      i-=1
    end
  end
end   

#print final list
puts list
