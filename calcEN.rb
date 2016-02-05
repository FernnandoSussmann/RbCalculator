require_relative "operation"

def retrieve_input(text)
  puts text
  return gets
end

def select_operation(operation)
  operation_types = [operation.sum_values, operation.subtract_values, operation.multiply_values, 
                   operation.divide_values, operation.power_of_value1_by_value2, operation.root_of_value1_by_value2, 
                   operation.derivative_of_value1_by_value2, operation.integral_of_value1_by_value2]
  operation.result = operation_types[operation.type - 1]
  return operation
end

operation_text = "Insert 1 to add, 2 subtract, 3 multiply, 4 divide, 5 power, 6 root, 7 simple derivative, 8 simple integral"
value1_text = "Insert value 1"
value2_text = "Insert value 2"
exit = "Insert 0 or enter to exit. Insert any number to start again"

begin
   operation = Operation.new(retrieve_input(operation_text),retrieve_input(value1_text),retrieve_input(value2_text))
   operation = select_operation(operation)
   operation.adjust_value2() 
   operation.print_result()
end while  retrieve_input(exit).to_i != 0
