

import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/infrastructure/models/pokemon_response.dart';

class PokemonMapper {

  static Pokemon pokemonDBToEntity( PokemonResponse pokemon ) => Pokemon(
    name: pokemon.name, 
    abilities: ( pokemon.abilities != '')
    ? 'https://pokeapi.co/api/v2/ability/${ pokemon.id }'
    : 'no-abilities-info', 
    sprites: (pokemon.sprites != '') 
    ? 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/${ pokemon.id }.svg' 
    : 'https://www.movienewz.com/img/films/poster-holder.jpg', 
    weight: pokemon.weight,
    height: pokemon.height,
    forms: (pokemon.forms != '' )
    ? 'https://pokeapi.co/api/v2/pokemon-form/${ pokemon.id }' 
    : 'no-abilities-info'
    );
}
