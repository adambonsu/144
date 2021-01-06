# frozen_string_literal: true

module KnowsOneFourFour
  def output
    @output ||= OneFourFour::Output.new
  end

  def test
    @test
  end
end

World(KnowsOneFourFour)
