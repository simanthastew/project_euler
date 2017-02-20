def is_palindrome?(num)
	if num.to_s.reverse == num.to_s
end

def largest_palindrome(upper_limit, lower_limit)
	palindromes = []
	upper_limit.downto(lower_limit).each do |x|
		upper_limit.downto(lower_limit).each do |y|
			palindromes << (x * y) if is_palindrome?((x * y))
		end
	end
	palindromes.max
end

largest_palindrome(999, 100)