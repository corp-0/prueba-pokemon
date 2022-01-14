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

  def self.instance_from_json(json)
    types = []
    json['types'].each do |type|
      types.push(PokemonType.new(type['type']['name']))
    end

    Pokemon.new(
      json['id'],
      json['name'].capitalize,
      json['sprites']['other']['official-artwork']['front_default'],
      json['weight'],
      json['height'],
      types
    )
  end
end
