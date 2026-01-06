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

    found = false
    (1..(len / 2)).each do |chunk|
      next unless (len % chunk).zero?               # only consider chunk sizes that evenly divide the length
      parts = s.chars.each_slice(chunk).map(&:join)
      if parts.uniq.length == 1
        invalid_sum += i
        found = true
        break
      end
    end
    # if found, we already added i; continue to next number
  end
end

p invalid_sum
