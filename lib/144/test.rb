# frozen_string_literal: true

module OneFourFour
  class Test
    attr_accessor :output, :questions, :pointer

    def initialize(output)
      @output = output
    end

    def start(name, questions)
      @questions = questions
      welcome_message(name)
      ask_first_question
    end

    def provide(answer, question = 0)
      @output.puts mark(@questions[question], answer)
    end

    private

    def ask_first_question
      @output.puts "#{@questions.first}:"
    end

    def clean(question)
      question.gsub('x', '*')
    end

    def mark(question, answer)
      instance_eval(clean(question)) == answer ? 'CORRECT' : 'INCORRECT'
    end

    def welcome_message(name)
      @output.puts "Welcome to 144 - #{name}"
    end
  end
end
