# frozen_string_literal: true

def cipher(original_text, shifts)
end

def user_interface
  puts '  Input text to be encoded:'
  original_text = gets.chomp

  return if original_text.empty?

  puts "\n  Input number of letter shifts:"
  shifts = gets.chomp.to_i

  ciphered_text = cipher(original_text, shifts)

  puts "\n  Your ciphered text:"
  puts ciphered_text
end

user_interface
