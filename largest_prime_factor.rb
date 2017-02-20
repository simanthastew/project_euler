require 'prime'

def factors(num)
  factors = []
  for x in (2..num - 1)
    factors << x if num % x == 0
  end
  factors
end

def is_prime(num)
  prime_nums = []
  nums_to_check = factors(num)
  nums_to_check.each do |x| 
    prime_nums << x if Prime.prime?(x)
  end
  prime_nums
end

def largest_prime_factor(num)
  is_prime?(num).sort.last
end

largest_prime_factor(600851475143)
