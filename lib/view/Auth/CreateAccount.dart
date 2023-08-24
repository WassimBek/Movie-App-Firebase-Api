import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_1/components/TextForm.dart';
import 'package:movie_app_1/components/buttonStyle.dart';
import 'package:movie_app_1/model/firebase/Auth.dart';
import 'package:movie_app_1/raper.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({super.key});
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff181818),
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                      size: 150,
                    ),
                    Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      TextForm(
                          hintText: "Email account",
                          onChange: (value) => {email = value}),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: TextForm(
                          hintText: "Password",
                          onChange: (value) => {password = value},
                          visible: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    MyButton(
                        title: "LOGIN",
                        onTap: () async{
                          await Authentication(context, email, password);
                        }),
                    MyButton(title: "SINGIN", onTap: () {}),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
