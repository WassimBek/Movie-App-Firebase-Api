import 'package:flutter/material.dart';
import 'package:movie_app_1/Home.dart';
import 'package:movie_app_1/view/Search/searchBody.dart';

class SearchBarr extends StatefulWidget {
  const SearchBarr({super.key});

  @override
  State<SearchBarr> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBarr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff181818),
        elevation: 0.0,
        title: Text("Search Bar"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: SearchBody(),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> movieSearch = [];
    for (var film in movies) {
      if (film.movieName.toLowerCase().contains(query.toLowerCase())) {
        movieSearch.add(film.movieName);
      }
    }
    return ListView.builder(
        itemCount: movieSearch.length,
        itemBuilder: (BuildContext context, index) {
          var result = movieSearch[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> movieSearch = [];
    for (var film in movies) {
      if (film.movieName.toLowerCase().contains(query.toLowerCase())) {
        movieSearch.add(film.movieName);
      }
    }
    return ListView.builder(
        itemCount: movieSearch.length,
        itemBuilder: (BuildContext context, index) {
          var result = movieSearch[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
