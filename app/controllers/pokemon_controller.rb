class PokemonController < ApplicationController
  def show
    pokemon_data = PokeApiService.get_random_pokemon
    @pokemon = Pokemon.instance_from_dict(pokemon_data)
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
