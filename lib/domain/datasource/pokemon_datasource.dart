

import 'package:pokedex/domain/entities/pokemon.dart';

abstract class PokemonDatasource {

  Future<List<Pokemon>> getPokemonById( String pokemonId );
}