begin
   print "Insert 1 to add, 2 subtract, 3 multiply, 4 divide, 5 power, 6 root, 7 simple derivative, 8 simple integral\n"
   operation = gets.to_i
   
   print "Insert value 1\n"
   value1 = gets.to_f
   print "Insert value 2\n"
   value2 = gets.to_f

   result = 0;

   case operation
    when 1
      result = value1 + value2
    when 2
      result = value1 - value2
    when 3
      result = value1 * value2
    when 4
      if value2 != 0
        result = value1 / value2
      else 
        print "It is not possible to make this operation when value 2 is 0\n"
      end
    when 5
      result = value1 ** value2
    when 6
      if value2 != 0
        result = value1 ** (1.0/value2)
      else
        print "It is not possible to make this operation when value 2 is 0\n"
      end
    when 7
      result = value1 * value2
      value2 -= 1
      print "\n" + result.to_s + "x^" + value2.to_s + "\n"
    when 8
      if (value2 != -1) 
        value2 += 1
        result = value1 / value2
         print "\n" + result.to_s + "x^" + value2.to_s + "\n"
      else
        print "Derivative cannot be solved\n"
      end
    else
      print "Ivalid Operation\n"
   end

   print "\n" + result.to_s + "\n"
   print "\nInsert 0 to exit, or any other number to make another operation\n"
end while  gets.to_i != 0
