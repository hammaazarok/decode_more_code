CHARS_HASH = { '.-': 'A', '-...': 'B', '-.-.': 'C', '-..': 'D',
               '.': 'E', '..-.': 'F', '--.': 'G', '....': 'H', '..': 'I',
               '.---': 'J', '-.-': 'K', '.-..': 'L', '--': 'M',
               '-.': 'N', '---': 'O', '.--.': 'P', '--.-': 'Q',
               '.-.': 'R', '...': 'S', '-': 'T', '..-': 'U',
               '...-': 'V', '.--': 'W', '-..-': 'X', '-.--': 'Y',
               '--..': 'Z', '.----': '1', '..---': '2', '...--': '3',
               '....-': '4', '.....': '5', '-....': '6', '--...': '7',
               '---..': '8', '----.': '9', '-----': '0' }.freeze

def decode_char(char)
  CHARS_HASH[:"#{char}"]
end

def decode_word(word)
  spaces = ' '
  words = word.split(spaces)
  result = ''
  words.each do |i|
    result += decode_char(i)
  end
  result
end

def decode(sentence)
  spaces = '  '
  sentences = sentence.split(spaces)
  result = ''
  sentences.each do |i|
    result += "#{decode_word(i)} "
  end
  puts result
end

puts decode_char('.-')
puts decode_word('-- -.--')
decode('-- -.--   -. .- -- .')
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
