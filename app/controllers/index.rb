get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
	# "hjghjg"
	@word = params[:word]
	"Show a list of anagrams for \"#{@word}\""
	erb :index
end