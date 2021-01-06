# frozen_string_literal: true

Given('the configured Test, {string}, contains the following Questions:') do |name, questions|
  @game = name
  @questions = questions.raw.flatten
  @test = OneFourFour::Test.new(output)
end

When('I start the Test') do
  test.start(@game, @questions)
end

Then('I should see {string}') do |message|
  expect(output.messages).to include(message)
end

Then('I should be prompted to provide an answer to the first Question, {string}') do |first_question|
  expect(output.messages).to include(first_question)
end

Given('the Question is {int}x{int}') do |_int, _int2|
  pending # Write code here that turns the phrase above into concrete actions
end

When('I answer {int}') do |_int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('my answer is marked as CORRECT') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('my answer is marked as INCORRECT') do
  pending # Write code here that turns the phrase above into concrete actions
end
