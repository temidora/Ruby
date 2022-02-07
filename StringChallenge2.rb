# ta
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
            puts "changed to: 2 #{str}"
        when "bc", "cb"
            str[i..i+1]="a"
            puts "changed to: a #{str}"
        end
        #puts "out of case"
        #puts str[i]
        #puts str[i+1]
        #puts str[i+2]
        #puts str
        #puts str[i..i+1]
        #puts i
        i=0
     else 
        i+=1
     end
  end
puts "length #{str.length}"
end

StringChallenge("abcabc")
