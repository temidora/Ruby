def StringChallenge(str)

  # code goes here
 str ="MrtyNNgMM"
 my_list=Array.new
 my_list= str.split("")
 new_word=" "
 
 #puts my_list
 for i in 0..str.length

  if my_list[i] =="N"
  elsif my_list[i]=="M"
      #new_word.insert(new_word.length,my_list[i-1])
     
      new_word<<new_word[-1] 
      #puts new_word
  else 
    #new_word.insert(new_word.length, my_list[i])
    #puts my_list[i]
    new_word<<my_list[i]
    #puts new_word
  end
 
 end
puts new_word.strip
puts new_word
return new_word
 #puts new_word
 #return new_word
end

# keep this function call here 
puts StringChallenge(STDIN.gets)
#puts StringChallenge("MrtyNNgMM")
