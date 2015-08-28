begin
   print "Digite 1 para soma, 2 subtracao, 3 multiplicacao, 4 divisao, 5 potencia, 6 raiz, 7 derivada simples, 8 integral simples\n"
   operacao = gets.to_i
   
   print "Digite o valor 1\n"
   valor1 = gets.to_f
   print "Digite o valor 2\n"
   valor2 = gets.to_f

   resultado = 0;

   case operacao
    when 1
      resultado = valor1 + valor2
    when 2
      resultado = valor1 - valor2
    when 3
      resultado = valor1 * valor2
    when 4
      if valor2 != 0
        resultado = valor1 / valor2
      else 
        print "Nao e possivel efetuar divisao por 0\n"
      end
    when 5
      resultado = valor1 ** valor2
    when 6
      if valor2 != 0
        resultado = valor1 ** (1.0/valor2)
      else
        print "Nao e possivel efetuar divisao por 0\n"
      end
    when 7
      resultado = valor1 * valor2
      valor2 -= 1
      print "\n" + resultado.to_s + "x^" + valor2.to_s + "\n"
    when 8
      if (valor2 != -1) 
        valor2 += 1
        resultado = valor1 / valor2
         print "\n" + resultado.to_s + "x^" + valor2.to_s + "\n"
      else
        print "Derivada nao pode ser calculada\n"
      end
    else
      print "Operacao Invalida\n"
   end

   print "\n" + resultado.to_s + "\n"
   print "\nDeseja sair? (0 para sair)\n"
end while  gets.to_i != 0
