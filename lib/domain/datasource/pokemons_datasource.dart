

import 'package:pokedex/domain/entities/pokemon.dart';

abstract class PokemonsDatasource {

  Future<Pokemon> getPokemonById( String id );

  Future<List<Pokemon>> searchPokemons( String query );

  Future<List<Pokemon>> getSimilarsPokemons( int pokemonId );

}