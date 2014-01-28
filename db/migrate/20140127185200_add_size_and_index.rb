class AddSizeAndIndex < ActiveRecord::Migration
	def change
		add_column :words, :word_size, :integer
		add_index :words, :word_size
		add_index :words, :word
	end
end