class PokemonType
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_html
    "<span class='type-#{@name}'>#{@name}</span>"
  end
end
