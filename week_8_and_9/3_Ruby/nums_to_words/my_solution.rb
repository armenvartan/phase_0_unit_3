# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself].

# 2. Pseudocode
# turn the number into an array and deal with each digit individually. i'm either
# going to do a .length to decide how to deal with each spot or see what happens
# i will deal with the indiviual cases (1-20), then use string addition to do the
# others - ex. "thirty" + "one" = "thirty one"


# 3. Initial Solution

def in_words
  puts "Please enter an integer from 0 - 99999, and I will say it to you in English"
  number = gets.chomp() # give me your number
  play_number = number.to_s.split(//) # the number we're going to play with
  number_word = [] # where we're going to put the words for each digit to compile into one nice string later
  number_word << "zero" if number == 0 # deal with zero here, to avoid issues defining a zero later (we don't want "one hundred zero")
  exceptions = [11,12,13,14,15,16,17,18,19] # numbers that don't play by the rules

  if exceptions.include?(play_number.first(2).join.to_i) && play_number.length == 5
    teen_thousands = play_number.shift(2).join.to_i
    number_word << "eleven thousand" if teen_thousands == 11
    number_word << "twelve thousand" if teen_thousands == 12
    number_word << "thirteen thousand" if teen_thousands == 13
    number_word << "fourteen thousand" if teen_thousands == 14
    number_word << "fifteen thousand" if teen_thousands == 15
    number_word << "sixteen thousand" if teen_thousands == 16
    number_word << "seventeen thousand" if teen_thousands == 17
    number_word << "eighteen thousand" if teen_thousands == 18
    number_word << "nineteen thousand" if teen_thousands == 19
  end

  if play_number.length == 5
    ten_thousands = play_number.shift.to_i
    number_word << "ten" if ten_thousands == 1
    number_word << "twenty" if ten_thousands == 2
    number_word << "thirty" if ten_thousands == 3
    number_word << "forty" if ten_thousands == 4
    number_word << "fifty" if ten_thousands == 5
    number_word << "sixty" if ten_thousands == 6
    number_word << "seventy" if ten_thousands == 7
    number_word << "eighty" if ten_thousands == 8
    number_word << "ninety" if ten_thousands == 9
  end

  if play_number.length == 4
    thousands = play_number.shift.to_i
    number_word << "thousand" if thousands == 0
    number_word << "one thousand" if thousands == 1
    number_word << "two thousand" if thousands == 2
    number_word << "three thousand" if thousands == 3
    number_word << "four thousand" if thousands == 4
    number_word << "five thousand" if thousands == 5
    number_word << "six thousand" if thousands == 6
    number_word << "seven thousand" if thousands == 7
    number_word << "eight thousand" if thousands == 8
    number_word << "nine thousand" if thousands == 9
  end

  if play_number.length == 3
    hundreds = play_number.shift.to_i
    number_word << "one hundred" if hundreds == 1
    number_word << "two hundred" if hundreds == 2
    number_word << "three hundred" if hundreds == 3
    number_word << "four hundred" if hundreds == 4
    number_word << "five hundred" if hundreds == 5
    number_word << "six hundred" if hundreds == 6
    number_word << "seven hundred" if hundreds == 7
    number_word << "eight hundred" if hundreds == 8
    number_word << "nine hundred" if hundreds == 9
  end

  if exceptions.include?(play_number.join.to_i) && play_number.length == 2
    teens = play_number.shift(2).join.to_i
    number_word << "eleven" if teens == 11
    number_word << "twelve" if teens == 12
    number_word << "thirteen" if teens == 13
    number_word << "fourteen" if teens == 14
    number_word << "fifteen" if teens == 15
    number_word << "sixteen" if teens == 16
    number_word << "seventeen" if teens == 17
    number_word << "eighteen" if teens == 18
    number_word << "nineteen" if teens == 19
  end

  if play_number.length == 2
    tens = play_number.shift.to_i
    number_word << "ten" if tens == 1
    number_word << "twenty" if tens == 2
    number_word << "thirty" if tens == 3
    number_word << "forty" if tens == 4
    number_word << "fifty" if tens == 5
    number_word << "sixty" if tens == 6
    number_word << "seventy" if tens == 7
    number_word << "eighty" if tens == 8
    number_word << "ninety" if tens == 9
  end

  if play_number.length == 1
    ones = play_number.pop.to_i
    number_word << "one" if ones == 1
    number_word << "two" if ones == 2
    number_word << "three" if ones == 3
    number_word << "four" if ones == 4
    number_word << "five" if ones == 5
    number_word << "six" if ones == 6
    number_word << "seven" if ones == 7
    number_word << "eight" if ones == 8
    number_word << "nine" if ones == 9
  end
  puts number_word.join(" ")
end



# 4. Refactored Solution




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

in_words




# 5. Reflection
# This was fun. Order mattered more than I had thought. For example, I need to pull
# out the hundreds spot before dealing with the teens, otherwise 111 would return
# "eleven one". I added the thousands to see the logic hold in the code (i copy/pasted
# the hundred code and changed the word 'hundred' to 'thousand'). You can now do
# full damage in any Final Fantasy game in strings. There is an option, to add the word
# 'and' by adding more parameters, but I'm not going to do it. I don't say 'and' that
# often when I say numbers, anyway.

# Update: I added the ten thousands, because they are also an exception.
