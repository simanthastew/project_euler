def find_multiples_of_3(limit)
	multiples = []
	for num in (1..limit - 1) do
		multiples << num if num % 3 == 0
	end
	multiples
end

def find_multiples_of_5(limit)
	multiples = []
	for num in (1..limit - 1) do
		multiples << num if num % 5 == 0
	end
	multiples
end

def add_multiples(limit)
	find_multiples_of_3(limit).reduce(:+) + find_multiples_of_5(limit).reduce(:+)
end

add_multiples(1000)