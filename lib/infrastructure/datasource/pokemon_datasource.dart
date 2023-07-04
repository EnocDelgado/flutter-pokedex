import 'package:dio/dio.dart';

import 'package:pokedex/domain/datasource/pokemon_datasource.dart';

// import 'package:pokedex/infrastructure/models/pokemon_response.dart';
// import 'package:pokedex/infrastructure/mappers/pokemon_mapper.dart';

import 'package:pokedex/domain/entities/pokemon.dart';


class PokemondbDatasource extends PokemonDatasource {

  final dio = Dio( BaseOptions(
    baseUrl: 'https://pokeapi.co/api/v2/pokemon'
    ) 
  );

  // List<Pokemon> _jsonToPokemon( Map<String, dynamic> json ) {

  //   final pokemonResponse = PokemonResponse.fromJson( json );

  //   final List<Pokemon> pokemons = pokemonResponse.response
  //   .where( ( pokemon ) => pokemon.sp )
  //   .map( ( pokemon ) => PokemonMapper.pokemonDBToEntity( pokemon ) 
  //   ).toList();

  //   return pokemons;
  // } 

  @override
  Future<Pokemon> getPokemonById(String id) {
    // TODO: implement getSimilarsPokemons
    throw UnimplementedError();
  }

  @override
  Future<List<Pokemon>> getSimilarsPokemons(int pokemonId) {
    // TODO: implement getSimilarsPokemons
    throw UnimplementedError();
  }

  @override
  Future<List<Pokemon>> searchPokemon(String query) {
    // TODO: implement searchPokemon
    throw UnimplementedError();
  }

}