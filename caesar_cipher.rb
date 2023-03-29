def cipher_char(original_char, shifts)
  if original_char >= 'a' && original_char <= 'z'
    return cipher_lowercase_char(original_char, shifts)
  elsif original_char >= 'A' && original_char <= 'Z'
    return cipher_uppercase_char(original_char, shifts)
  end

  original_char
end

def cipher_lowercase_char(original_char, shifts)
  ciphered_char = ' '
  cyphered_bytes = original_char.getbyte(0) + shifts
  if cyphered_bytes > 122
    cyphered_bytes -= 26
  elsif cyphered_bytes < 97
    cyphered_bytes += 26
  end
  ciphered_char.setbyte(0, cyphered_bytes)
  ciphered_char
end

def cipher_uppercase_char(original_char, shifts)
  cipher_lowercase_char(original_char.downcase, shifts).upcase
end

def cipher_text(original_text, shifts)
  ciphered_text = ''
  original_text.each_char { |char| ciphered_text << cipher_char(char, shifts) }
  ciphered_text
end

def user_interface
  puts '  Input text to be ciphered:'
  original_text = gets.chomp

  return if original_text.empty?

  puts "\n  Input number of letter shifts:"
  shifts = gets.chomp.to_i.remainder(26)

  ciphered_text = cipher_text(original_text, shifts)

  puts "\n  Your ciphered text:"
  puts ciphered_text
end

user_interface
