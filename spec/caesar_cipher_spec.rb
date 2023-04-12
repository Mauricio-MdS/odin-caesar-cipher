# frozen_string_literal: true

require './lib/caesar_cipher'

describe 'caesar_chiper' do
  describe '.cipher_text' do
    it 'returns a word with characters shifted' do
      expect(cipher_text('hello', 2)).to eql('jgnnq')
    end
  end
end
