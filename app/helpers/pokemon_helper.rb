require 'uri'
module PokemonHelper
  def poke_path(path)
    path.gsub(%r(\/?api\/v1\/[a-zA-Z0-9]*\/), '').chomp('/')
  end
end
