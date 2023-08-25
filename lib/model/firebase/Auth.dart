import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_1/view/Home/raper.dart';


Future createUser(BuildContext context, email, password) async {
  try {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    Get.to(RouterPage());
  } on FirebaseAuthException catch (exp) {
    if (exp.code == 'weak-password') {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Week Passwoed")));
    } else if (exp.code == 'email-already-in-use') {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content:
              Text("The email address is already in use by another account.")));
    }
  }
}

Future signInUser(BuildContext context, email, password) async {
  try {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    Get.to(RouterPage());
  } on FirebaseAuthException catch (exp) {
    if (exp.code == 'user-not-found') {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("User Not Found")));
    } else if (exp.code == 'wrong-password') {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Wrong Password")));
    }
  }
}
