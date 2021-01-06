# frozen_string_literal: true

require 'spec_helper'

module OneFourFour
  describe Test do
    describe '#start' do
      let(:game) { 'indigo' }
      let(:output) { double('output').as_null_object }
      let(:questions) { ['5x5'] }
      let(:test) { Test.new(output) }

      it 'sends a welcome message' do
        expect(output).to receive(:puts).with("Welcome to 144 - #{game}")
        test.start(game, questions)
      end
      it 'provides the first question, prompting for an answer' do
        expect(output).to receive(:puts).with("#{questions.first}:")
        test.start(game, questions)
      end
    end
  end
end
