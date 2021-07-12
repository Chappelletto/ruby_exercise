

#kx + b = 0

k = ARGV[0].to_i
b = ARGV[1].to_i

#k = 20.0
#b = 2.0

def line_eq(k, b)
  x = (-1)* b / k
  puts "Икс равен #{x}"
end

line_eq(k,b)
