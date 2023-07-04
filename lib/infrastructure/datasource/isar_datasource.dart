

import 'package:isar/isar.dart';
import 'package:pokedex/domain/datasource/local_storage_datasource.dart';
import 'package:pokedex/domain/entities/pokemon.dart';

class IsarDatasource extends LocalStorageDatasource {

  late Future<Isar> db;

  IsarDatasource() {
    db = openDB();
  }

  Future<Isar> openDB() async {

    // if ( Isar.instanceNames.isEmpty ) {
    //   return await Isar.open([ PokemonSchema ], inspector: true );
    // }

    return Future.value( Isar.getInstance() );
  }

  @override
  Future<bool> isPokemonFavorite(int pokemonId) {
    // TODO: implement isPokemonFavorite
    throw UnimplementedError();
  }

  @override
  Future<List<Pokemon>> loadPokemons({int limit = 10, offset = 0}) {
    // TODO: implement loadPokemons
    throw UnimplementedError();
  }

  @override
  Future<void> toogleFavorite(Pokemon pokemon) async {
    
    // final isar = await db;

    // final favoriteMovie = await
  }

}