puts "Enter commands and press enter or type EXIT to finish"
#creates an array
command=""
#creates hash with names and values
dictionary=Hash.new()
#creates array of hashes
list=Array.new()
list.push(dictionary)
#iterator of hash in array
i=0

while (command!="EXIT")
  command=gets.chomp
  separated_words=command.split()

  #set name and value
  case separated_words[0]
    when "SET"
        list[i][separated_words[1]]=separated_words[2]
    when "GET"
      if list[i].has_key?(separated_words[1])
        puts list[i][separated_words[1]]
      else 
        puts "NULL"
      end
    when "DELETE"
        list[i].delete(separated_words[1])
    when "COUNT"
        if list[i].value?(separated_words[1])
          puts list[i].values.count(separated_words[1])
        else 
          puts 0
        end
    when "BEGIN"
      dict_temp=list[i].clone
      list.push(dict_temp)
      i+=1
    when "PRT"
      puts list
      puts i
    when "ROLLBACK"
      if i==0
        puts "NO TRANSACTION"
      else 
        list.pop
        i-=1
      end
    when "COMMIT"
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
