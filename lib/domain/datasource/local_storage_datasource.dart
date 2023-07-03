import 'package:pokedex/domain/entities/pokemon.dart';

abstract class LocalStorageDatasource {

  Future<void> toogleFavorite( Pokemon pokemon );

  Future<bool> isPokemonFavorite( int pokemonId );

  Future<List<Pokemon>> loadPokemons({ int limit = 10, offset = 0 });
}