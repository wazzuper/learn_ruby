#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  sum_in_end = 0

  array.each { |num| sum_in_end += num }

  sum_in_end
end

def multiply(array)
  multiplies = 1

  array.each { |num| multiplies *= num }

  multiplies
end

def power(a, b)
  a ** b
end

def factorial(num)
  summary = 1

  if num > 0
    while num > 0
      summary *= num
      num -= 1
    end
  else
    summary
  end

  summary
end