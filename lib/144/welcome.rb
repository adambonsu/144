# frozen_string_literal: true

module OneFourFour
  class Welcome
    def initialize(output)
      @output = output
    end
    def message(test_name)
      @output.puts "Welcome to 144 - #{test_name}"
    end
  end
end
