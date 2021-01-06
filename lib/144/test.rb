# frozen_string_literal: true

module OneFourFour
  class Test
    attr_accessor :output
    def initialize(output)
      @output = output
    end
    def start(name, questions)
      @output.puts "Welcome to 144 - #{name}"
      @output.puts "#{questions.first}:"
    end
  end
end