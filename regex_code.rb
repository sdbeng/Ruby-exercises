#basic code
puts "Good morning, Serg! Let's try some regex."
puts "--------------------------"
puts "--Basic solution--"
puts "--------------------------"

def starts_with_consonant?(s)
	regex = /\A(?=[^aeiou])([a-z])/i
	
	if regex =~ s
		puts "Yes, word is correct! You entered: #{s}"
		return true
	else
		puts "Nope, try again. Word entered was: #{s}"
		return false
	end
end
puts starts_with_consonant?("rlifornia")

#separator
puts "--------------------------------"
puts "--Alternative shorter solution--"
puts "--------------------------------"

#Alternative solution with use of ternary operators
def starts_with_consonant_alt?(s)
	s =~ /\A(?=[^aeiou])(?=[a-z])/i ? true : false
end
puts starts_with_consonant_alt?("rlifornia")
