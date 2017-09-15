lambs = [lambda{|x, y| x + y}, lambda{|x, y| x - y}, lambda{|x, y| x * y}, lambda{|x,y| x / y}, lambda{|x,y| x**y}, lambda{|x,y| x**(1/y)}]
opt = gets.to_i
num = gets.to_f
num2 = gets.to_f
puts lambs[opt].call num, num2
