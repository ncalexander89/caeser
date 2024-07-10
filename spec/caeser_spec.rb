#spec/caeser_spec.rb

require './lib/caeser'

describe Caeser do
    describe "#caeser_cipher" do
      it "turns string into ASCII, adds shift, returns new string" do
        caeser = Caeser.new
        expect(caeser.caeser_cipher("What a string!",5)).to eql("Bmfy f xywnsl!")
      end
    end
  end
  