# U3.W8-9: Reverse Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# 1. split it into an array by spaces, then reverse the words.
# 2. Turn calling myself a donut into gibberish


# 3. Initial Solution
def reverse_words(words)
  word_array = words.split(" ")
  word_array.map!{ |word| word.reverse }
  reverse_sentence = word_array.join(" ")
end



# 4. Refactored Solution

def reverse_words(words)
  word_array = words.split(" ")
  reverse_array = word_array.map{ |word| word.reverse }
  reverse_sentence = reverse_array.join(" ")
end




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
p reverse_words("hi how are")





# 5. Reflection

# This was an easy one for me.
