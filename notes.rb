sum = 0
factor = 5
factors = []
array = (1..factor).to_a
array.each do |i|
factors.push(factor % i)
end
factors.each do |count|
if count == 0 then sum += 1

# so if sum == 2 then number is prime
