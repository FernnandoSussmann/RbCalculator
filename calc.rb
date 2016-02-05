require_relative "operation"

def atribui_valores(texto)
  puts texto
  return gets
end

def seleciona_operacao(operacao)
  tipos_operacao = [operacao.sum_values, operacao.subtract_values, operacao.multiply_values, 
                   operacao.divide_values, operacao.power_of_value1_by_value2, operacao.root_of_value1_by_value2, 
                   operacao.derivative_of_value1_by_value2, operacao.integral_of_value1_by_value2]
  operacao.result = tipos_operacao[operacao.type - 1]
  return operacao
end

operacao_texto = "Digite 1 para soma, 2 subtracao, 3 multiplicacao, 4 divisao, 5 potencia, 6 raiz, 7 derivada simples, 8 integral simples"
valor1_texto = "Digite o valor 1"
valor2_texto = "Digite o valor 2"
sair = "Deseja sair? (0 para sair)"

begin
   operacao = Operation.new(atribui_valores(operacao_texto),atribui_valores(valor1_texto),atribui_valores(valor2_texto))
   operacao = seleciona_operacao(operacao)
   operacao.adjust_value2() 
   operacao.print_result()
end while  atribui_valores(sair).to_i != 0
