# frozen_string_literal: true

module OneFourFour
  class Result
    attr_reader :marks

    def initialize
      @marks = []
    end
    def <<(mark)
      @marks << mark
    end
    def respond_to_missing?(name, include_all = false)
      @marks.respond_to?(name) || super
    end
    def method_missing(name, *args)
      super unless @marks.respond_to? name
      @marks.send(name, *args)
    end
    def correct
      @marks.map.select { |mark| mark == 'CORRECT' }
    end
  end
end
