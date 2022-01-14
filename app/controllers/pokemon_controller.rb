class PokemonController < ApplicationController
  def show
    type = PokemonType.new('electric')
    type2 = PokemonType.new('fire')
    pokemon = Pokemon.new(
      1,
      'Pikachu',
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
      60,
      10,
      [type, type2]
    )
    @pokemon = pokemon
    types
  end

  private

  def types
    types_array = @pokemon.types

    @types = if types_array.count > 1
               "#{types_array[0].to_html}/#{types_array[1].to_html}"
             else
               types_array[0].to_html
             end
  end

end
