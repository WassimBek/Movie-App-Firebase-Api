import 'package:flutter/material.dart';

class MovieContent extends StatelessWidget {
  const MovieContent({this.imageSrc, this.movieName, this.textMovie});
  final String? imageSrc;
  final String? movieName;
  final String? textMovie;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff181818),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 350,
              child: Hero(
                  tag: 'image-Name-${imageSrc}',
                  child: Image.network(
                    imageSrc.toString(),
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  movieName.toString(),
                  style: TextStyle(
                      color: Color.fromARGB(199, 250, 248, 249),
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffff6348),
                ),
                child: Center(
                  child: Text(
                    "PLAY",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xfffaf8f9),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Text(
                textMovie.toString(),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
