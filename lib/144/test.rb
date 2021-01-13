# frozen_string_literal: true

module OneFourFour
  class Test
    attr_reader :marker, :output, :questions

    def initialize(output)
      @output = output
      @marker = Marker.new
    end

    def start(name, questions)
      @questions = questions
      welcome_message(name)
      ask_first_question
    end

    def provide(answer, question = 0)
      @output.puts @marker.mark(@questions[question], answer)
    end

    private

    def ask_first_question
      @output.puts "#{@questions.first}:"
    end

    def welcome_message(name)
      @output.puts "Welcome to 144 - #{name}"
    end
  end
end
