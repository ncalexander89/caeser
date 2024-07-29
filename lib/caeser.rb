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
        base = number < 91 ? 65 : 97
        ((number - base + shift) % 26 + base).chr
        # number += base
        # check for alphabet ASCII after shift, otherwise subtract 26
        # number -= 26 unless number.between?(65, 90) || number.between?(97, 122)
      else
        number.chr
      end
      # change ASCII back to character
      # rotation.chr
    end
    # convert to string
    char.join('')
  end
end

caeser = Caeser.new
p caeser.caeser_cipher('Hello, World!', 74)
