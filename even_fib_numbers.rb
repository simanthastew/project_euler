def even_fib(limit)
	a, b = 1, 2
	evens_sum = 0
  while a <= limit
  	evens_sum += a if a % 2 == 0
    a, b = b, a + b
	end
	evens_sum
end

even_fib(4000000)