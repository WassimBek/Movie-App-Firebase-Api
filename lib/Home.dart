import 'package:flutter/material.dart';
import 'package:movie_app_1/model/classMovie.dart';
import 'package:movie_app_1/model/fetchData.dart';
import 'package:movie_app_1/view/Home/ShowsTrend.dart';
import 'package:movie_app_1/view/Home/firstSection.dart';

List<getData> movies = [];

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff181818),
        body: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: [
                  FirstSection1(posterImg: movies[2].movieImg),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 35.0, horizontal: 5.0),
                    child: headText("TV Shows Trending Today"),
                  ),
                  ShowsTrending(index: 0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 35.0, horizontal: 5.0),
                    child: headText("Movies Trending Today"),
                  ),
                  ShowsTrending(index: 49),
                ],
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

Row headText(String textHead) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        textHead,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Poppins",
          fontSize: 19,
        ),
      ),
      Text(
        "see All",
        style: TextStyle(
          color: Color(0xffff6348),
          fontSize: 20,
        ),
      ),
    ],
  );
}
