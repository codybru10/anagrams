require('rspec')
require('pry')
require('anagrams.rb')

describe('String#anagrams') do
  it("what it does") do
    expect("input".anagram("paramater")).to(eq("output"))
  end
end
