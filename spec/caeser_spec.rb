# frozen_string_literal: true

# spec/caeser_spec.rb

require './lib/caeser'

describe Caeser do
  describe '#caeser_cipher' do
    context('when translating a small word')
    it 'works with small positive shift' do
      caeser = Caeser.new
      expect(caeser.caeser_cipher('Hello, World!', 9)).to eql('Qnuux, Fxaum!')
    end
    it 'works with small negative shift' do
      caeser = Caeser.new
      expect(caeser.caeser_cipher('Hello, World!', -5)).to eql('Czggj, Rjmgy!')
    end
    it 'works with large positive shift' do
      caeser = Caeser.new
      expect(caeser.caeser_cipher('Hello, World!', 74)).to eql('Dahhk, Sknhz!')
    end
    it 'works with large negative shift' do
      caeser = Caeser.new
      expect(caeser.caeser_cipher('Hello, World!', -55)).to eql('Ebiil, Tloia!')
    end
  end
end
