require('rspec')
require('pry')
require('anagrams.rb')

describe('String#anagrams') do
  # it("tests for equivalence of method-object to argument") do
  #   expect("fox".anagram?("fox")).to(eq(true))
  # end
  it("tests for non-anagram") do
    expect("brake".anagram("beak")).to(eq(""))
  end
  it("tests for anagram with correct length") do
    expect("brake".anagram("break")).to(eq("break"))
  end
  it("tests for anagram with one correct and one incorrect") do
    expect("brake".anagram("break pancake")).to(eq("break"))
  end
end
