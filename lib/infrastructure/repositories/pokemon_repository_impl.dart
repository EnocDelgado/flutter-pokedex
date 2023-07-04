
import 'package:pokedex/domain/datasource/pokemon_datasource.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repositories/pokemons_repository.dart';

class PokemonRepositoryImpl extends PokemonsRepository {

  final PokemonDatasource datasource;
  PokemonRepositoryImpl( this.datasource );

  @override
  Future<Pokemon> getPokemonById(String id) {
    return datasource.getPokemonById( id );
  }

  @override
  Future<List<Pokemon>> getSimilarsPokemons( int pokemonId ) {
    return datasource.getSimilarsPokemons( pokemonId );
  }

  @override
  Future<List<Pokemon>> searchPokemons(String query) {
    return datasource.searchPokemon( query );
  }

}