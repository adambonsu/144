module KnowsOneFourFour
  def output
    @output ||= OneFourFour::Output.new
  end
  def test
    @test
  end
end

World(KnowsOneFourFour)