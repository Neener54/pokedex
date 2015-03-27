require 'httparty'
class PokeApi
  include HTTParty

  base_uri 'http://pokeapi.co/api/v1'

  def index
    get('/pokedex/1')["pokemon"]
  end

  def pokemon(id)

    pokemon = get("/pokemon/#{id.to_i}")
    pokemon["images"] = pokemon["sprites"].map do |sprite|
      id = sprite["resource_uri"].gsub(%r(\/?api\/v1\/[a-zA-Z0-9]*\/), '').chomp('/')
      get("/sprite/#{id}")
    end
    pokemon
  end

  def type(id)
    get("/type/#{id.to_i}")
  end

  def move(id)
    get("/move/#{id.to_i}")
  end

  def ability(id)
    get("/ability/#{id.to_i}")
  end

  def egg(id)
    get("/egg/#{id.to_i}")
  end

  def description(id)
    get("/description/#{id.to_i}")
  end

  def sprite(id)
    get("/sprite/#{id.to_i}")
  end

  def game(id)
    get("/game/#{id.to_i}")
  end

  def get(url)
    request = self.class.get(url)
    JSON.parse(request.body)# if [200,201,302].include?(request.code)
  end


end