require './5_longest_palindromic_substring'

describe 'longest_palindrome' do
  context '引数に回文が存在する場合' do
    it 'babを返すこと' do
      expect(longest_palindrome('babad')).to eq('bab')
    end

    it 'adadaを返すこと' do
      expect(longest_palindrome('babadada')).to eq('adada')
    end

    it 'bbを返すこと' do
       expect(longest_palindrome('cbbd')).to eq('bb')
    end

    it 'sosを返すこと' do
      expect(longest_palindrome('asos')).to eq('sos')
    end

    context '引数の文字列がそのまま回文である場合'do
      it 'bcvcacvcbを返すこと' do
        expect(longest_palindrome('bcvcacvcb')).to eq('bcvcacvcb')
      end
    end
  end
end