# frozen_string_literal: true

require './lib/caesar_cipher'

describe 'caesar_chiper' do
  describe '.cipher_text' do
    it 'returns a word with characters shifted' do
      expect(cipher_text('hello', 2)).to eql('jgnnq')
    end

    it 'returns a text with special characterers unshifted, but letters shifted' do
      expect(cipher_text('hello, world!', 2)).to eql('jgnnq, yqtnf!')
    end
  end
end
