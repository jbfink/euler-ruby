K = 20

def is_probably_prime?(n)
    #fast calculation of base^exponent % modulus
    def modular_pow(base, exponent, modulus)
        result = 1
        while exponent > 0 do
            if (exponent & 1) == 1 then
               result = (result * base) % modulus
            end
            exponent = exponent >> 1
            base = (base * base) % modulus
        end
        return result
    end

    if n < 5 then
        if n == 2 || n == 3 then
            return true
        else
            return false
        end
    end

    #writing n-1 as 2^s * d (d odd)
    s = 0
    d = n - 1
    while (d%2 == 0) do
        d=d/2
        s=s+1
    end

    K.times do
        a = Random.rand(n-4) + 2 #random number on (2,n-2)
        x = modular_pow(a,d,n)
        if (x==1 || x==n-1) then 
            next
        end
        for r in 1 .. s-1 do
            x = modular_pow(x,2,n)
            if x == 1 then
                return false
            end
            if x == n-1 then
                stop = true
                break;
            end
        end
        if (stop) then
            next;
        end
        return false
    end
    return true;
end

def is_prime?(n)
  return true if n <= 2
  return false if n & 1 == 0
  # runs the block for each number from 2 to sqrt(n)
  # only returns true if the block *never* returns true
  (3..(Math.sqrt(n).to_i)).step(2).none? { |i| n%i == 0 }
end

