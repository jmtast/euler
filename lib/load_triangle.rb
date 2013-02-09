matrix = []
File.open("triangle_input.txt", "r").each_line.with_index do |line, i|
  line.split(" ").each.with_index do |num, j|
    if j == 0
      matrix << [num]
    else
      matrix[i-j] << num
    end
  end
end