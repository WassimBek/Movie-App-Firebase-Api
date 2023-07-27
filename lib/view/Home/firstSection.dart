import 'package:flutter/material.dart';

class FirstSection1 extends StatelessWidget {
  const FirstSection1({required this.posterImg});
  final String posterImg;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.network(
          posterImg,
          width: double.infinity,
          height: 450,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: -25,
          left: 45,
          child: Row(
            children: [
              MyInfo(
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ),
                  "List"),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 20.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xffff6348),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "PLAY",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins",
                        ),
                      )),
                ),
              ),
              MyInfo(
                  Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: 25,
                  ),
                  "Info"),
            ],
          ),
        )
      ],
    );
  }
}

Row MyInfo(Icon listIcon, String dataIcon) {
  return Row(
    children: [
      IconButton(onPressed: () {}, icon: listIcon),
      Text(
        dataIcon,
        style:
            TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Poppins"),
      )
    ],
  );
}
