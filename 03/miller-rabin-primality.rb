def miller_rabin_prime?(n,k)
  return true if n == 2
  return false if n < 2 or n % 2 == 0
  d = n - 1
  s = 0
  while d % 2 == 0
    d /= 2
    s += 1
  end
  k.times do
    a = 2 + rand(n-4)
    x = (a**d) % n
    next if x == 1 or x == n-1
    for r in (1 .. s-1)
      x = (x**2) % n
      return false if x == 1
      break if x == n-1
    end
    return false if x != n-1
  end
  true  # probably
end
 
p primes = (1..100).find_all {|i| miller_rabin_prime?(i,10)}
