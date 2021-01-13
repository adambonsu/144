# frozen_string_literal: true

module OneFourFour
  class Test
    attr_accessor :output, :questions, :pointer

    def initialize(output)
      @output = output
    end

    def start(name, questions)
      @questions = questions

      @output.puts "Welcome to 144 - #{name}"
      @output.puts "#{questions.first}:"
    end

    def clean(question)
      question.gsub('x', '*')
    end

    def mark(question, answer)
      eval(clean(question)) == answer ? 'CORRECT' : 'INCORRECT'
    end

    def provide(answer, question = 0)
      @output.puts mark(@questions[question], answer)
    end
  end
end
