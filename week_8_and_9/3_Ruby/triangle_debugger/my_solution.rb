# U3.W8-9: Triangle Debugger


# I worked on this challenge [by myself, with: ].


# 1. Original Solution

# def valid_triangle?(a, b, c)
#   if a != 0 || b != 0 || c != 0
#     if a >= b
#       largest = a
#       sum += b
#     else largest = b
#       sum += a
#     end
#     if c > largest
#       sum += largest
#       largest = c
#     else
#       sum += c
#     end
#     if sum > largest
#       true
#     else
#       false
#     end
#   else
#     false
#   end
# end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error? it wants 3 args, and 4 are in the person's code
# * what is the exact line number the error is appearing? 9
# * before you fix the bug, what do you think is causing the error? too many arguments

# --- Bug 2 ---
# * what is the exact description of the error? it doesn't work for an equilateral triangle
# * what is the exact line number the error is appearing? 12
# * before you fix the bug, what do you think is causing the error? the math is bad, he or she should take more time to flush out their thoughts

# --- Bug 3 ---
# * what is the exact description of the error? the true false statements are strings
# * what is the exact line number the error is appearing? line 24, 26, 29
# * before you fix the bug, what do you think is causing the error? true : false is a boolean (not sure of their exact object), not a string


# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a,b,c)
  a + b > c && a + c > b && b + c > a # the triangle equation. the sum of the length of 2 sides is always greater than the length of the third
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE






# 5. Reflection

# I hope that if I'm ever given code like that, that I can just rewrite it. It would
# save any company a lot of money and time to just do it right. They should also either
# fire or send that employee to extensive training. Firing is probably the better
# solution. No one who cares about their work would do anything that sloppily. There
# is no way to do any kind of worth while work with work that messy.
# In kitchens there is a saying, "messy station, messy mind". When your work is that
# messy, nothing good can come of it.
