class Primefactors

  def of(n)
    if n == 1
      return []
    end

    factors = []
    divisor = 2
    while n > 1
      while n % divisor == 0
        factors.append(divisor)
        n = n / divisor
      end
      divisor += 1
    end

    factors
  end
end