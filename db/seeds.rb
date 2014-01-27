lines_array = File.readlines('words.txt')

lines_array.each do |word|
  Word.create(word: word.chomp)
end