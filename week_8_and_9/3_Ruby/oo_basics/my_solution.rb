# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def average
    scores.reduce(:+) / scores.length
  end

  def letter_grade
    if self.average >= 90
      "A"
    elsif self.average >= 80
      "B"
    elsif self.average >= 70
      "C"
    elsif self.average >= 60
      "D"
    else
      "F"
    end
  end
end

def linear_search(array,search)
  array.each_with_index do |student,i|
    if student.first_name == search
      return i
      break
    else
      return -1
    end
  end
end
students = [["Alex",[100,100,100,0,100]],["John",[100,100,100,0,100]]]
# students[0] = Student.new(students[0][0],students[0][1])
# students[1] = Student.new(students[1][0],students[1][1])
students.each{ |x| Student.new(x[0].to_s, x[1]) }
p 
# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# 5. Reflection
