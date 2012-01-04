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
#so what I want to do is take an array of 1..n and for *each* thing do this test where *those factors themselves* are split into factors, and if their sum of the modulos is *exactly* two (viz, divisible by themselves and by 1) then push *that* into an array, and then read that array[-1] to get the last factor. dang.
