def max_2_sum(cool_numbers=[])
	if cool_numbers.empty?
		return 0
	elsif cool_numbers.count == 1
		return cool_numbers[0]
	else
		cool_numbers.sort! do |num1, num2|
			num2 <=> num1
		end
		cool_numbers[0] + cool_numbers[1]
		
	end
	
end

puts max_2_sum([10,2,3])

puts max_2_sum([34])

puts max_2_sum