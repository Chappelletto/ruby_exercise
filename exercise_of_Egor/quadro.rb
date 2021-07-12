
# ax^2+bx+c=0
#a = ARGV[0]
#b = ARGV[1]
#c = ARGV[2]

a=4.0
b=-6.0
c=0

def quadro_eq(a,b,c)	
  d =b**2 - 4*a*c
  if d < 0 
    puts "Корней нет"
  elsif d == 0
  	x1 = ((-1)*b - (Math.sqrt(d)))/2*a
  elsif x1 = ((-1)*b - (Math.sqrt(d)))/2*a
    x2 = ((-1)*b + (Math.sqrt(d)))/2*a
      puts "X1 = #{x1} \n X2 = #{x2}"
  end
end

quadro_eq(a,b,c)