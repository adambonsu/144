# frozen_string_literal: true

require 'spec_helper'

module OneFourFour
  describe Test do
    let(:game) { 'indigo' }
    let(:output) { double('output').as_null_object }
    let(:questions) { ['5x5'] }
    let(:test) { Test.new(output) }

    describe '#start' do
      it 'sends a welcome message' do
        expect(output).to receive(:puts).with("Welcome to 144 - #{game}")
        test.start(game, questions)
      end
      it 'provides the first question, prompting for an answer' do
        expect(output).to receive(:puts).with("#{questions.first}:")
        test.start(game, questions)
      end
    end
    describe '#provide' do
      context 'correct answer' do
        it 'marks answer as CORRECT' do
          test.start(game, questions)
          expect(output).to receive(:puts).with('CORRECT')
          test.provide 25
        end
      end
      context 'incorrect answer' do
        it 'marks answer as INCORRECT' do
          test.start(game, questions)
          expect(output).to receive(:puts).with('INCORRECT')
          test.provide 99
        end
      end

    end
  end
end
