# U3.W8-9:


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

# def is_perfect_square?(number)
#   sqrt = Math.sqrt(number)
#   int = sqrt.to_i
#   int * int == number
# end
#
# def is_fibonacci?(num) # doesn't work for large numbers
#   fib_sq1 = is_perfect_square?(5 * num * num + 4)
#   fib_sq2 = is_perfect_square?(5 * num * num - 4)
#   (fib_sq1 && !fib_sq2) || (!fib_sq1 && fib_sq2)
# end



# 4. Refactored Solution

# def is_fibonacci?(num)
#   fibonacci = [0,1]
#   while fibonacci.last < num
#     fibonacci << fibonacci[-1] + fibonacci[-2]
#   end
#   num == fibonacci.last
# end

# def is_fibonacci?(num, fibonacci = [0,1])
#   return num == fibonacci.last if fibonacci.last >= num
#   fibonacci << fibonacci[-1] + fibonacci[-2]
#   is_fibonacci?(num, fibonacci)
# end

def is_fibonacci?(num, fibonacci = [0,1]) #thanks Hing Huynh for the blog on the last 2 solutions
  fibonacci.last < num ? is_fibonacci?(num, fibonacci << fibonacci[-1] + fibonacci[-2]) : num == fibonacci.last
end




# 1. DRIVER TESTS GO BELOW THIS LINE

def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

def assert
  yield ? true : false
end

p assert{ is_fibonacci?(random_fibonacci) == true }
p assert{ is_fibonacci?(10284720757613717413913) == true }
p assert{ is_fibonacci?(random_fibonacci+100) == false }
p assert{ is_fibonacci?(927372692193078999171) == false }

# 5. Reflection
