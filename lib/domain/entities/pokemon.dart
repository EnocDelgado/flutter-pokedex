import 'package:isar/isar.dart';

@collection
class Pokemon {

  Id? isarId;

  final String name;
  final List<String> abilities;
  final List<String> sprites;
  final int weight;
  final List<String> forms;
  final List<String> moves;

  Pokemon({
    required this.name, 
    required this.abilities, 
    required this.sprites, 
    required this.weight, 
    required this.forms, 
    required this.moves
  });
  
}