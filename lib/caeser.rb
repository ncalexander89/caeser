# frozen_string_literal: true

class Caeser # rubocop:disable Style/Documentation
  def caeser_cipher(string, shift)
    # change to array of ASCII
    # &:ord is a shorthand for { |char| char.ord }.
    # The ord method returns the ASCII value of the character. For example, 'h'.ord returns 104.
    num_array = string.split('').map(&:ord)
    # cycle through each number and convert if meets requirement
    char = num_array.map do |number|
      # check for if alphabet ASCII, add shift
      if number.between?(65, 90) || number.between?(97, 122)
        number += shift
        # check for alphabet ASCII after shift, otherwise subtract 26
        number -= 26 unless number.between?(65, 90) || number.between?(97, 122)
      end
      # change ASCII back to character
      number.chr
    end
    # convert to string
    char.join('')
  end
end

caeser = Caeser.new
p caeser.caeser_cipher('What a string!', -5)
