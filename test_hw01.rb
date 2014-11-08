#Basic

# array = [1,2,3]
# s = 0
# array.each do |num|
# 	s += num
# end
# puts "The sum of all array elem is: #{s}"

#inject version
# array = [*1..10]
# sum = array.inject {|memo, n| memo + n }
# puts sum

#Create a method - version with inject
def sum(numbers=[])
	return 0 if numbers.empty?

	numbers.inject do |memo, num|
		memo + num
	end

end

#puts sum([1,2,3]) #6

#puts sum #will return 0 which is the args default value

#version with .each
def notfancy_sum(mynumbers=[])
	return 0 if mynumbers.empty?

	s = 0
	mynumbers.each do |num|
		s += num
	end
	puts s
end

notfancy_sum([1,3,6])

#better to call the puts outside of the method to output
# the result in case of an empty array
puts notfancy_sum

#second problem
def max_2_sum(cool_numbers=[])
	if mynumbers.empty?
		return 0
	else-if cool_numbers.count == 1
		cool_numbers[0]
	else
		cool_numbers.sort! do |num1, num2|
			num2 <=> num1
			cool_numbers[0] + cool_numbers[1]
		end
	end
	
end

max_2_sum([2,7,10])







