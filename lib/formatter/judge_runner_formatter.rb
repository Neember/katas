require 'awesome_print'

class JudgeRunnerFormatter
  attr_accessor :output, :status

  def initialize
    @output_array = []
    @status = nil
  end

  def flush
    formatter = @status == :passed ? PassedFormatter : FailedFormatter
    formatter = formatter.new(@output_array)
    formatter.print_out
  end

  def <<(statement)
    @output_array << statement
  end
end

class FailedFormatter
  def initialize(output_array)
    @statements = output_array
  end

  def print_out
    puts ''
    @statements.each do |statement|
      puts statement.red if statement
    end
    puts ''
  end
end

class PassedFormatter
  def initialize(output_array)
    @statements = output_array
    @max_length = @statements.max { |statement| statement.size }.size
  end

  def print_out
    start_output

    @statements.each do |statement|
      print '* ' + statement.center(@max_length) + ' *'
    end

    end_output
  end

  def print(string)
    puts string.green if string 
  end

  def start_output
    print ''
    print '*' * ( @max_length + 4)
    print '* ' + (' ' * @max_length) + ' *'
  end

  def end_output
    print '* ' + (' ' * @max_length) + ' *'
    print '*' * ( @max_length + 4)
    print ''
  end
end
