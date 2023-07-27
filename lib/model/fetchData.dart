import 'package:http/http.dart' as http;
import 'package:movie_app_1/Home.dart';
import 'dart:convert';
import 'classMovie.dart';

Future fetchData() async {
  const url =
      'https://netflix54.p.rapidapi.com/search/?query=stranger&offset=0&limit_titles=50&limit_suggestions=20&lang=en';
  final headers = {
    'X-RapidAPI-Key': '5f1710e8efmshc10077f54c45317p11365ejsn209b0795e811',
    'X-RapidAPI-Host': 'netflix54.p.rapidapi.com'
  };

  final response = await http.get(Uri.parse(url), headers: headers);
  final jsonData = jsonDecode(response.body);
  for (var eachMovie in jsonData) {
    final movie = getData(
      movieImg: eachMovie["jawSummary"]["backgroundImage"]["url"],
      movieName: eachMovie["jawSummary"]["title"],
      textOfMovie: eachMovie["jawSummary"]["contextualSynopsis"]["text"],
      episodeMovie: eachMovie["jawSummary"]["episodeCount"] ,
      seasonMovie: eachMovie["jawSummary"]["seasonCount"] ,
    );
    movies.add(movie);
  }
  print(movies);
}
