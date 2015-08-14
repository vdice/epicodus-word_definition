require('rspec')
require('word')

describe(Word) do
  before() do
    @test_word = Word.new({:name => 'word'})
    @test_word_definition = 'a unit of language, consisting of one or more spoken sounds or their written representation, that functions as a principal carrier of meaning.'
  end

  describe('#name') do
    it('returns the word itself') do
      expect(@test_word.name()).to(eq('word'))
    end
  end

  describe('#definitions') do
    it('returns the word\'s definition; starts out empty') do
      expect(@test_word.definitions()).to(eq([]))
    end
  end

  describe('#add_definition') do
    it('adds a Definition instance to the Word instance') do
      @test_word.add_definition(@test_word_definition)
      expect(@test_word.definitions()).to(eq([@test_word_definition]))
    end
  end
end
