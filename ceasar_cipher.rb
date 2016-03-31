def caesar_cipher(string, shift_factor)
  array_from_string = string.split('')
  alfabet_lowercase = ('a'..'z').to_a
  alfabet_uppercase = ('A'..'Z').to_a
  encrypted_string = ""

  array_from_string.each do |character|

    if ((alfabet_lowercase.include? character) || (alfabet_uppercase.include? character))
      if alfabet_uppercase.include? character
        index = alfabet_uppercase.index(character)
        new_index = index + shift_factor
        if new_index >= alfabet_uppercase.size
          new_index = 0
        end
        encrypted_string << alfabet_uppercase[new_index]
      end

      if alfabet_lowercase.include? character
        index = alfabet_lowercase.index(character)
        new_index = index + shift_factor
        if new_index >= alfabet_lowercase.size
          new_index = 0
        end
        encrypted_string << alfabet_lowercase[new_index]
      end

    else
      encrypted_string << character
    end
  end

  puts encrypted_string
end


caesar_cipher("This is a encrypted message!", 5)
