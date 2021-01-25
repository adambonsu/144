# frozen_string_literal: true

module OneFourFour
  class Test
    attr_reader :marker, :output, :questions

    def initialize(output)
      @output = output
      @marker = Marker.new
      @marks = []
    end

    def start(name, questions)
      @questions = questions
      welcome_message(name)
      ask_first_question
    end

    def provide(answer, question = 0)
      @marks << @marker.mark(@questions[question], answer)
      @output.print @marks.last
    end

    def result
      @output.print @marks.map.select{|mark| mark == 'CORRECT'}.size == @questions.size ? 'PASS' : 'FAIL'
    end

    private

    def ask_first_question
      @output.print "#{@questions.first}:"
    end

    def welcome_message(name)
      @output.puts "Welcome to 144 - #{name}"
    end
  end
end
