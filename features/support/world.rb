# frozen_string_literal: true

module KnowsOneFourFour
  def output
    @output ||= OneFourFour::Output.new
  end

  def test
    @test ||= OneFourFour::Test.new(output)
  end
end

World(KnowsOneFourFour)
