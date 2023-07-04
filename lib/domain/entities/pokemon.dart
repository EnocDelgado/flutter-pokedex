import 'package:isar/isar.dart';

@collection
class Pokemon {

  Id? isarId;

  final String name;
  final String abilities;
  final String sprites;
  final int weight;
  final int height;
  final String forms;


  Pokemon({
    required this.name, 
    required this.abilities, 
    required this.sprites, 
    required this.weight, 
    required this.height,
    required this.forms
  });
  
}