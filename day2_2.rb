ranges = []

File.read("day_2.txt").split(",").each do |item|
  next if item.strip.empty?
  start_val, end_val = item.strip.split("-").map(&:to_i)
  ranges << (start_val..end_val)
end

invalid_sum = 0

ranges.each do |range|
  range.each do |i|
    s = i.to_s
    len = s.length
    next if len == 1
    if len.even?
      half = len / 2
      if s[0, half] == s[half, half]
        p i
        invalid_sum += i
      end
    else
      if s.chars.uniq.length == 1
        p i
        invalid_sum += i
      end
    end
  end
end

p invalid_sum