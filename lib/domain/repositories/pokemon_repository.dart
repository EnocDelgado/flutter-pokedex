

import 'package:pokedex/domain/entities/pokemon.dart';

abstract class PokemonRepository {

  Future<List<Pokemon>> getPokemonById( String pokemonId );
}