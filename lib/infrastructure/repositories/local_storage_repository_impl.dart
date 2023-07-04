

import 'package:pokedex/domain/datasource/local_storage_datasource.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repositories/local_storage_repository.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {

  final LocalStorageDatasource datasource;

  LocalStorageRepositoryImpl( this.datasource );
   
  @override
  Future<bool> isPokemonFavorite(int pokemonId) {
    return datasource.isPokemonFavorite( pokemonId );
  }

  @override
  Future<List<Pokemon>> loadPokemons({int limit = 10, offset = 0}) {
    return datasource.loadPokemons( limit: limit, offset: offset );
  }

  @override
  Future<void> toogleFavorite(Pokemon pokemon) {
    return datasource.toogleFavorite( pokemon );
  }

}