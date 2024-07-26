# frozen_string_literal: true

# spec/caeser_spec.rb

require './lib/caeser'

describe Caeser do
  describe '#caeser_cipher' do
    it 'turns string into ASCII, adds positive shift, returns new string' do
      caeser = Caeser.new
      expect(caeser.caeser_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end
    it 'turns string into ASCII, adds negative shift, returns new string' do
      caeser = Caeser.new
      expect(caeser.caeser_cipher('What a string!', -5)).to eql('RcBo B nomdib!')
    end
  end
end
