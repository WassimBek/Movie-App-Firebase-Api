import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_1/Home.dart';
import 'package:movie_app_1/view/movie/content.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Get.to(() => MovieContent(
                  imageSrc: movies[index].movieImg,
                  movieName: movies[index].movieName,
                  textMovie: movies[index].textOfMovie,
                )),
            child: ListTile(
              leading: Container(
                width: 120,
                height: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    movies[index].movieImg,
                    fit: BoxFit.cover,
                    height: 180,
                  ),
                ),
              ),
              title: Text(
                movies[index].movieName,
                style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
              ),
              subtitle: Text(
                movies[index].movieName,
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        });
  }
}
