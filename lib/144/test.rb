# frozen_string_literal: true

module OneFourFour
  class Test
    attr_reader :marker, :output, :questions

    def initialize(output)
      @output = output
      @marker = Marker.new
      @results = Result.new
      @welcome = Welcome.new(@output)
    end

    def start(name, questions)
      @questions = questions
      @welcome.message(name)
      ask_first_question
    end

    def provide(answer, question = 0)
      @results << @marker.mark(@questions[question], answer)
      @output.print @results.last
    end

    def result
      @output.print @results.correct.size == @questions.size ? 'PASS' : 'FAIL'
    end

    private

    def ask_first_question
      @output.print "#{@questions.first}:"
    end
  end
end
