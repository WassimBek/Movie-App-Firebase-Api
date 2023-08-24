import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movie_app_1/Home.dart';
import 'package:movie_app_1/view/movie/content.dart';

class ShowsTrending extends StatefulWidget {
  ShowsTrending({super.key, required this.index});
  int index;
  @override
  State<ShowsTrending> createState() => _ShowsTrendingState();
}

class _ShowsTrendingState extends State<ShowsTrending> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          child: ListView.builder(
              itemCount: 50,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                index = widget.index;
                widget.index++;
                return moviePoster(index);
              }),
        ),
      ],
    );
  }
}

GestureDetector moviePoster(int index) {
  return GestureDetector(
    onTap: () => Get.to(() => MovieContent(
          imageSrc: movies[index].movieImg,
          movieName: movies[index].movieName,
          textMovie: movies[index].textOfMovie,
        )),
    child: Hero(
      tag: 'image-Name-${movies[index].movieImg}',
      child: Container(
          margin: EdgeInsets.only(left: 10.0),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(movies[index].movieImg)))),
    ),
  );
}
