import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.title , required this.onTap});
  final String title;
  Function() onTap ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: GestureDetector(
        onTap:onTap,
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Color(0xffff6348),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
