rotations = File.readlines("code_day_1.txt", chomp: true)
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

rotations = File.readlines("code_day_1.txt", chomp: true)
current_point = 50
count = 0 

for rotation in rotations
  operation = rotation[0]
  shift = rotation[1..].to_i

  if operation == "L"
    shift.times do
      current_point -= 1
      current_point = 99 if current_point < 0
      count += 1 if current_point == 0
    end
  else
    shift.times do
      current_point += 1
      current_point = 0 if current_point > 99
      count += 1 if current_point == 0
    end
  end
end

p count
