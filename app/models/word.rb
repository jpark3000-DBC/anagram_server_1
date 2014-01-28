class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagram(word)
  	# w = Word.find_by(word: word)
  	# w.word
  	Word.all.select { |entry|  entry.word.downcase.chars.sort == word.downcase.chars.sort }
  end
end
