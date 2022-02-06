#program want you to type a string, prints a string without "N" and replaces "M" by a character before
def StringChallenge(str)

 #string str converts to array my_list with " " at the beggining in case first letter is "M"  
 my_list=Array.new
 my_list= str.split("")
 new_word=" "
  
 for i in 0..str.length-1
 
    if my_list[i] =="N" 
    elsif my_list[i]=="M"
        new_word+=new_word[-1] 
    else 
      new_word+=my_list[i]
    end 
 
 end
#delete all whitespaces
new_word=new_word.strip
return new_word
end
#call a function
puts "Type a string"
puts StringChallenge(STDIN.gets)
#puts StringChallenge("MrtyNNgMM")
