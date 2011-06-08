#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
#Find the sum of all the multiples of 3 or 5 below 1000.
# here's what I do, because I am bad at math:
# Define a range (1 to 1000)
# slice everything out of that range divided by three or five with a modulo of zero, put that in another range, and add it up

range = (1..1000).to_a
newarray = []
range.each do |number|
	if number.modulo(3) == 0 or number.modulo(5) == 0 then
		newarray.push(number)
		end
	end
p newarray
sum = 0
newarray.each do |item|
sum  += item
end
p sum
