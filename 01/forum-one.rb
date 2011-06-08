# from the PE forum, using monkeypatching on a class (smart -- wish I had thought of it)

class Integer
  def sum_mod modulus
    n = self.div modulus
    modulus * n * (n + 1) / 2
  end
end
 
num = 999
sum = num.sum_mod(3) + num.sum_mod(5) - num.sum_mod(15)
 
puts "Sum is #{ sum }."
