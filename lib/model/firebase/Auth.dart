import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_1/raper.dart';

Future Authentication(BuildContext context, email, password) async {
  try {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    Get.to(RouterPage());
  } on FirebaseAuthException catch (exp) {
    if (exp.code == 'weak-password') {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Week Passwoed")));
    } else if (exp.code == 'email-already-in-use') {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:
              Text("The email address is already in use by another account.")));
    }
  }
}
