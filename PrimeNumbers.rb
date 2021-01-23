
def is_prime(n)
  m=2
  while m*m<=n
    if n%m==0
      return false
    end
    m+=1
  end
  return true;
end
def n_prime_numbers(n)
  arr=[]
  arr.push(2)
  val=3
  while arr.count<n
    if val %10 !=7 && is_prime(val)
      arr.push(val)
    end
    val+=1
  end
  arr
end
puts n_prime_numbers(10)
