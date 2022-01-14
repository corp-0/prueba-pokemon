require 'rest-client'

class PokeApiService
  URL_BASE = 'https://pokeapi.co/api/v2/pokemon/'.freeze

  def self.get_pokemon_by_id(id)
    get_request("#{URL_BASE}#{id}")
  end

  def self.get_pokemon_count
    get_request('https://pokeapi.co/api/v2/pokemon-species/?limit=0')['count']
  end

  def self.get_random_pokemon
    get_request("#{URL_BASE}#{rand(get_pokemon_count)}")
  end

  def self.get_request(url)
    response = RestClient.get(url)
    JSON.parse(response)
  end
end
