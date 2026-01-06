# banks = File.readlines("day_3.txt", chomp: true)

# total_joltage = 0
# banks.each do |bank|
#     bank_in_array = bank.to_i.digits.reverse
#     first_cell = bank_in_array[0...-1].max
#     first_cell_index = bank_in_array.index(first_cell)
#     highest_from_remaining_cells = bank_in_array.slice!(0...first_cell_index).max.to_s  slice is not the best way also 
#     combined_cell = (first_cell.to_s + highest_from_remaining_cells).to_i
#     total_joltage += combined_cell
# end

# p total_joltage

# slice!(0...first_cell_index) removes and returns the prefix (the elements before the index). You then call .max on that removed prefix — but you actually want the max after the index (and you also wanted to remove the index itself).

# bank_in_array.index(first_cell) finds the first occurrence in the whole array, but you computed first_cell from bank_in_array[0...-1] (the same value will usually be found correctly, but it's safer to search in that same without_last slice).

# .max on an empty array returns nil, so calling .to_s on that produces "" (and concatenating may behave unexpectedly).





#####################################################

####  Some technique to get highest two digit number - 

# banks = File.readlines("day_3.txt", chomp: true)

# total_joltage = 0
# banks.each do |bank|
#   bank = bank.strip
#   next if bank.empty?

#   # digits left-to-right
#   bank_in_array = bank.chars.map(&:to_i)   # safer than Integer#digits.reverse

#   # first_cell = max digit excluding the last digit
#   without_last = bank_in_array[0...-1]     # [] if single-digit
#   first_cell = without_last.empty? ? 0 : without_last.max

#   # find the first occurrence of first_cell within the same slice
#   first_cell_index = without_last.index(first_cell) || 0

#   # remove everything before and including that index -> keep digits after it
#   remaining = bank_in_array[(first_cell_index + 1)..] || []

#   # highest digit among the remaining (or 0 if none)
#   highest_from_remaining_cells = remaining.empty? ? 0 : remaining.max

#   combined_cell = (first_cell.to_s + highest_from_remaining_cells.to_s).to_i

#   total_joltage += combined_cell
# end

# p total_joltage


#####################################################


### Sliding window Algorithms


banks = File.readlines("day_3.txt", chomp: true)

total_joltage = 0
banks.each do |bank|
  bank = bank.strip
  next if bank.empty?
  joltage = []
  # digits left-to-right
  bank_in_array = bank.chars.map(&:to_i)   # safer than Integer#digits.reverse
  bank_in_array.each do |i|
    joltage.
    joltage.append(i)
  end


end
