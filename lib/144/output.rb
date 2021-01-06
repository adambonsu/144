# frozen_string_literal: true

module OneFourFour
  class Output
    def messages
      @messages ||= []
    end

    def puts(message)
      messages << message
    end
  end
end
