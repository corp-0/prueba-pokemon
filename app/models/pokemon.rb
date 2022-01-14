class Pokemon
  attr_reader :id, :name, :image, :height, :weight, :types

  def initialize(id, name, image, weight, height, types)
    @id = id
    @name = name
    @image = image
    @weight = weight
    @height = height
    @types = types
  end

  def self.instance_from_dict(dict)
    types = []
    dict['types'].each do |type|
      types.push(PokemonType.new(type['type']['name']))
    end

    Pokemon.new(
      dict['id'],
      dict['name'].capitalize,
      dict['sprites']['other']['official-artwork']['front_default'],
      dict['weight'],
      dict['height'],
      types
    )
  end
end
