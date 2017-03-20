
card_number = "6011797668867828"

def string_to_array(number)
    number = number.chars
    number_array = number.map do |x|
     x.to_i
    end
    number_array
end

def check(number)
    
    valid = false
    sum = 0
    number_array = string_to_array(number)
    but_last = string_to_array(number)[0..-2]
    but_last.reverse.each_with_index do |number, index|
        if index.even?
            number = number*2
        end
        if number > 9
            number -= 9
        end
        sum += number
    end
    puts sum
    sum += number_array[-1]
    if sum % 10 == 0
        valid = true
    end
    valid
end
puts check(card_number)





# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"