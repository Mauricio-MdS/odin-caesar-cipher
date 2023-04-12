# frozen_string_literal: false

def cipher_char(original_char, shifts)
  if original_char.match?(/[a-z]/)
    return cipher_lowercase_char(original_char, shifts)
  elsif original_char.match?(/[A-Z]/)
    return cipher_uppercase_char(original_char, shifts)
  end

  original_char # Chars that are not letters return unchanged
end

def cipher_lowercase_char(original_char, shifts)
  ciphered_bytes = original_char.ord + shifts
  if ciphered_bytes > 'z'.ord # Wraps from z to a
    ciphered_bytes -= 26
  elsif ciphered_bytes < 'a'.ord # Wraps from a to z in case of negative shift
    ciphered_bytes += 26
  end
  ciphered_bytes.chr
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

