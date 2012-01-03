#just putting this here to remind me how to do monkeypatching
#
class String
def hello
p "Hello" + " " + self
end
end

#another example -- use this to make an is_prime? maybe?
class Integer
   def is_even?
  return true if self == 2
  return true if self % 2 == 0
  return false
  end
end

