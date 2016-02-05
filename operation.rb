class Operation
  def initialize(type, value1, value2)
    @type = type.to_i
    @value1 = value1.to_f
    @value2 = value2.to_f
    @result = 0.0
  end

  attr_writer:result
  attr_accessor:value2

  def type()
    @type
  end

  def value1()
    @value1
  end

  def value2()
    @value2
  end

  def result()
    @result
  end

  def sum_values()
    @result = @value1 + @value2
  end

  def subtract_values()
    @result = @value1 - @value2
  end

  def multiply_values()
    @result = @value1 * @value2
  end

  def divide_values()
    if (@value2 != 0)
      @result = @value1 / @value2
    else
      @result = "Invalid Operation"
    end
  end

  def power_of_value1_by_value2()
    @result = @value1 ** @value2
  end

  def root_of_value1_by_value2()
    if (@value2 != 0)
      @result = @value1 ** (1.0/@value2)
    else
      @result = "Invalid Operation"
    end
  end

  def derivative_of_value1_by_value2()
    @result = @value1 * @value2
  end

  def integral_of_value1_by_value2()
    if (@value2 != -1)
      @result = @value1 / (@value2 + 1)
    else
      @result = "Invalid Operation"
    end
  end

  def adjust_value2()
    if (@type == 7)
      @value2 -= 1
    elsif (@type == 8)
      @value2 += 1
    end
  end

  def print_result()
    if (@type == 7 || @type == 8 && @result.to_s != "Invalid Operation")
      puts @result.to_s + "x^" +@value2.to_s
    elsif (@type > 8)
      puts "Invalid Operation"
    else
      puts @result.to_s
    end
  end

end

