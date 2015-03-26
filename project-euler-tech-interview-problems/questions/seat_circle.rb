# Seat Circle: a variation on the classic "Josephus Problem": http://rosettacode.org/wiki/Josephus_problem)
#
# Input: 100 chairs in a circle, labeled from 1 to 100
# Condition: 
# - Pattern of change is that seat 1 is asked to leave, seat 2 is asked to stay, seat 3 is asked to leave...
# - Pattern continues of skipping one and asking one to leave till only one is left
# Output: Return the last person left

def last_person(seats)
  # build chairs array


end


# MANUAL SOLUTION:

# First pass: eliminate 50 people. 
# Last = #100, now in index position 49.
#=> [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64, 66, 68, 70, 72, 74, 76, 78, 80, 82, 84, 86, 88, 90, 92, 94, 96, 98, 100]

# Second pass: eliminate 25 people. 
# Remember: it's a circle. Last skipped was #100, so we start by elminating #2, then #6, etc.
# Last = #100, now in index position 24.
#=> [4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64, 68, 72, 76, 80, 84, 88, 92, 96, 100]

# Third pass: eliminate 13 people. 
# Last skipped was #100, so we start by elminating #4, then #12, etc.
# Last = #96, now in index position 11.
#=> [8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96]

# Fourth pass: eliminate 6 people.
# Last deleted was #100, so we keep #8 and start by eliminating #16, then #32, etc.
# Last = #88, now in index position 5.
#=> [8, 24, 40, 56, 72, 88]

# Fifth pass: eliminate 3 people. 
# Last deleted was #96, so we start by skipping #8 and eliminating #24, then #56, etc.
# Last = #72, now in index position 2.
#=> [8, 40, 72]

# Sixth pass: eliminate 1 person. 
# Last deleted was #88, so we skip #8 and start by eliminating #40
# Last = #72, now in index position 1.
#=> [8, 72]

# Seventh pass: eliminate 1 person.
# Last skipped was #72, so we start by eliminating #8
# Last = #72, now in index position 0.
#=> [72]


# ALGEBRAIC SOLUTION:
# In general cases, the result can be calculated algebraicly as follows: 
# 2*(N - closest_smaller_pow_2) 
#
# So in our example:
# N = 100
# closest_smaller_pow_2 = "the power of 2 closest to N without going over (in this case, 2**6 or 64)"
#
# 2*(100 - 64)
# 2*(36)
# 72
