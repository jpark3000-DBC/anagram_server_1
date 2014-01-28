class Word < ActiveRecord::Base
  # Remember to create a migration!
  before_save do |entry|
  	entry.word_size = entry.word.length
  end

  def self.anagram(word)
  	length = word.length
  	equal_length_words = Word.where(word_size: length)
  	equal_length_words.select { |entry|  entry.word.downcase.chars.sort == word.downcase.chars.sort }
  end
end

