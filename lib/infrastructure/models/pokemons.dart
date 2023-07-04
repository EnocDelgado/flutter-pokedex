// To parse this JSON data, do
//
//     final pokemon = pokemonFromJson(jsonString);

// import 'dart:convert';
// Pokemon pokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));
// String pokemonToJson(Pokemon data) => json.encode(data.toJson());

class Pokemons {
    final int count;
    final String next;
    final dynamic previous;
    final List<Result> results;

    Pokemons({
        required this.count,
        required this.next,
        this.previous,
        required this.results,
    });

    factory Pokemons.fromJson(Map<String, dynamic> json) => Pokemons(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class Result {
    final String name;
    final String url;

    Result({
        required this.name,
        required this.url,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
}
