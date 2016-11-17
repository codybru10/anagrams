require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/test_anagram') do
  @result = params.fetch('testword').anagram(params.fetch('teststring'))
  erb(:anagram_output)
end
