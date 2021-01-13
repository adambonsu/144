# frozen_string_literal: true

module OneFourFour
  class Marker
    def clean(question)
      question.gsub('x', '*')
    end

    def mark(question, answer)
      instance_eval(clean(question)) == answer ? 'CORRECT' : 'INCORRECT'
    end
  end
end
