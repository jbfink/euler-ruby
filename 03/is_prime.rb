class Integer
      def is_prime?
      return true if self == 1
          array = []
          (1..self).to_a.each do |i|
                array.push(self % i)
       end
           if array.count(0) == 2 then return true
       else return false
       end
     end
   end

