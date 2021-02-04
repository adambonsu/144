# frozen_string_literal: true

module OneFourFour
  class Welcome
    def initialize(output)
      @output = output
    end

    def message(text)
      @output.puts text
    end
  end
end
