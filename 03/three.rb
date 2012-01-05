#The prime factors of 13195 are 5, 7, 13 and 29.
#
#What is the largest prime factor of the number 600851475143 ?
#note: the below sucks. It works for small numbers, but is damn nigh useless
#for anything large. Dammit. 

class Integer
      def is_prime?
      return true if self == 1
      return false if self.even?

          array = []
          (1..self).to_a.each do |i|
                array.push(self % i)
       end
           if array.count(0) == 2 then return true
       else return false
       end
     end
   end

