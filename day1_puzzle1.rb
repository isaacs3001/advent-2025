
rotations = File.readlines("day_1.txt", chomp: true)
current_point = 50
count = 0 
for rotation in rotations 
  operation = rotation[0]
  shift = rotation[1..].to_i
  prev_point = current_point

  if (operation == "L")
    current_point = (current_point - shift) % 100
  else
    current_point = (current_point + shift) % 100
  end

  if operation == "L"
    if prev_point < shift
      count += 1
    end
  else
    if (prev_point + shift) >= 100
      count += 1
    end
  end
end


p count
