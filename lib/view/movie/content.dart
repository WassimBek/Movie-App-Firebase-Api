import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movie_app_1/Home.dart';

class MovieContent extends StatelessWidget {
  const MovieContent(
      {this.imageSrc, this.movieName, this.epCount, this.snCount});
  final String? imageSrc;
  final String? movieName;
  final int? epCount;
  final int? snCount;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  child: Hero(
                      tag: 'image-Name-${imageSrc}',
                      child: Image.network(
                        imageSrc.toString(),
                        fit: BoxFit.cover,
                      )),
                ),
                IconButton(
                    onPressed: () {
                      Get.off(() => HomePage());
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
              child: Text(
                movieName.toString(),
                style: TextStyle(
                    color: Color.fromARGB(199, 250, 248, 249),
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            if (snCount != null && epCount != null)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "${snCount} Seasons\  .\  ${epCount} Episodes",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400),
                ),
              ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
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
          ],
        ),
      ),
    );
  }
}
