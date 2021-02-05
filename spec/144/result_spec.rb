# frozen_string_literal: true

require 'spec_helper'

module OneFourFour
  describe Result do
    let(:result) { Result.new }

    describe 'initialize' do
      it 'is empty' do
        expect(result.empty?).to be(true)
      end
    end

    describe '#<<' do
      it 'adds mark' do
        result << 'CORRECT'
        expect(result.empty?).to be(false)
        expect(result.size).to eq 1
      end
    end

    describe '#correct' do
      context 'No marks added yet' do
        it 'is empty' do
          expect(result.correct.empty?).to be(true)
        end
      end
      context 'Marks added' do
        context 'All marks are INCORRECT' do
          it 'is empty' do
            result << 'INCORRECT'
            expect(result.correct.empty?).to be(true)
            expect(result.correct.size).to eq 0
          end
        end
        context 'One mark is CORRECT' do
          it 'One mark returned' do
            result << 'CORRECT'
            expect(result.correct.size).to eq 1
          end
        end
      end
    end
  end
end