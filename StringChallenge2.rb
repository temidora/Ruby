def StringChallenge(str)
i=0
  while i<=str.length-1
     if str[i]!=str[i+1]
       
        case str[i..i+1]
        when "ab" || "ba"
            str[i..i+1]="c"
            puts "changed to c: #{str}"
        when "ac" || "ca"
            str[i..i+1]="b"
            puts "changed to: 2 #{str}"
        when "bc" || "cb"
            str[i..i+1]="a"
            puts "changed to: a #{str}"
        end
        i=0
     else 
        i+=1
     end
  end
puts str.length
end

StringChallenge("abcabc")
