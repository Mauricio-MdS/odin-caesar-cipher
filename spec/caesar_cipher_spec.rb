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

    it 'returns a text that maintains case' do
      expect(cipher_text('hElLo', 2)).to eql('jGnNq')
    end

    it 'wrap the shift from z to a' do
      expect(cipher_text('world', 5)).to eql('btwqi')
    end

    it 'shift with negative numbers' do
      expect(cipher_text('hello', -2)).to eql('fcjjm')
    end

    it 'wrap the shift from a to z' do
      expect(cipher_text('hello', -10)).to eql('xubbe')
    end

    it 'works with shifts that are greater than the alphabet size' do
      expect(cipher_text('hello', 28)).to eql('jgnnq')
    end
  end
end
