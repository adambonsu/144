# frozen_string_literal: true

module OneFourFour
  class Test
    attr_accessor :name, :output, :questions
    def initialize(name, questions, output)
      @name = name
      @output = output
      @questions = questions
    end
    def start
      @output.puts 'Welcome to 144'
      @output.puts "#{questions.first}:"
    end
  end
end