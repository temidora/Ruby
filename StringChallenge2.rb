# the function StringChallenge takes the str parameter and return the smalest number of the reduction method, only the letters a,b,c will be given in str and two different chars are taken and replaced with the 3rd ex: "ac"-> "b" but "aa" can't be replaced. The function is done repeatedly until the string can't be further reducted and outputs the length of string
def StringChallenge(str)
i=0
  while i<str.length-1
     if str[i]!=str[i+1]
        #puts "before case"
        case str[i..i+1]
        when "ab", "ba"
            puts "length before #{str.length}"
            str[i..i+1]="c"
            puts "changed to c: #{str}"
            puts "length after #{str.length}"
        when "ca", "ac"
            str[i..i+1]="b"
            puts "changed to: b #{str}"
        when "bc", "cb"
            str[i..i+1]="a"
            puts "changed to: a #{str}"
        end
       
        i=0
     else 
        i+=1
     end
  end

puts "length #{str.length}"
return str.length
end

StringChallenge("abcabc")
