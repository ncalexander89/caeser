class Caeser
  def caeser_cipher(string, shift)
    #change to array of ASCII    
    num_array=string.split("").map { |letter| letter.ord} 
    #cycle through each number and convert if meets requirement
    char = num_array.map do |number| 
    #check for if alphabet ASCII, add shift
    if number.between?(65,90) || number.between?(97,122)
      number = number+shift
      #check for alphabet ASCII after shift, otherwise subtract 26
      unless number.between?(65,90) || number.between?(97,122)
        number=number-26
      end
    end
    # change ASCII back to character
    number.chr
    end
  #convert to string
  char.join("")
  end
end
# puts caeser_cipher("What a string!",5)
