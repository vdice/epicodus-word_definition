class Word
  attr_reader(:self, :definitions)
  @@Words = []

  define_method(:initialize) do |attributes|
    @self = attributes.fetch(:self)
    @definitions = []
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  define_method(:save) do
    @@Words.push(self)
  end

  define_singleton_method(:all) do
    @@Words
  end

  define_singleton_method(:clear) do
    @@Words.clear()
  end
end
