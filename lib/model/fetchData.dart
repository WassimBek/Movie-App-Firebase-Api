import 'package:http/http.dart' as http;
import 'package:movie_app_1/Home.dart';
import 'dart:convert';
import 'classMovie.dart';

Future fetchData() async {
  const url = "https://imdb-top-100-movies.p.rapidapi.com/";
  final headers = {
    'X-RapidAPI-Key': 'e6b5e68370mshc8ffac1e6cd3cccp10ecd7jsn1cf2318de119',
		'X-RapidAPI-Host': 'imdb-top-100-movies.p.rapidapi.com'
  };

  final response = await http.get(Uri.parse(url), headers: headers);
  final jsonData = jsonDecode(response.body);
  for (var eachMovie in jsonData) {
    final movie = getData(
      movieImg: eachMovie["image"],
      movieName: eachMovie["title"],
      textOfMovie: eachMovie["description"],
      
    );
    movies.add(movie);
  }
  print(movies);
}
