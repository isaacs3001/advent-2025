sequences = File.read("day_2.txt").strip.split(/\s*,\s*/)
invalid_count = 0
invalid_sum = 0
sequences.each do |range|
  a_str, b_str = range.split("-")
  next unless a_str && b_str

  a = a_str.to_i
  b = b_str.to_i

  (a..b).each do |i|
    s = i.to_s

    if i.even?
      if s.length.even?
        half = s.length / 2
        if s[0, half] == s[half, s.length]
          invalid_count += 1
          invalid_sum += i
        end
      end
    else
      if i.digits.uniq.count == 1
        invalid_count += 1
        invalid_sum += i
      end
    end
  end
end

puts "Count: #{invalid_count}"
puts "Sum: #{invalid_sum}"
