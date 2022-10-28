def caeser_cipher(input_string, shift_factor)
  input_array = input_string.split('')
  cipher_array = input_array.map do |character|
    if character == "z"
      ('a'.ord + shift_factor - 1).chr
    elsif character == "Z"
      ('A'.ord + shift_factor - 1).chr
    elsif character.upcase != character.downcase
      (character.ord + shift_factor).chr
    else
      character
    end
  end
  p cipher_array.join('')
end

caeser_cipher('z @@', 5)