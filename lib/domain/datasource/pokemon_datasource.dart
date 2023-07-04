

import 'package:pokedex/domain/entities/pokemon.dart';

abstract class PokemonDatasource {

  Future<Pokemon> getPokemonById( String id );

  Future<List<Pokemon>> getSimilarsPokemons( int pokemonId );

  Future<List<Pokemon>> searchPokemon( String query );
}