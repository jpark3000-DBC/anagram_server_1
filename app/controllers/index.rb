get '/' do
	# @cool = params[:anagrams]

  erb :index
end


post '/anagrams' do
	@results = Word.anagram(params[:word])
	erb :index
end