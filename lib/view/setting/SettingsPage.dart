import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movie_app_1/components/buttonStyle.dart';
import 'package:movie_app_1/view/Auth/CreateAccount.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: MyButton(
                    title: "Create Account",
                    onTap: () {
                      Get.to(CreateAccount());
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: MyButton(title: "LOGIN", onTap: () {}),
              ),
              SettingTile(tileIcon: Icons.list, tileText: "My List"),
              SettingTile(tileIcon: Icons.settings, tileText: "App Settings"),
              SettingTile(
                  tileIcon: Icons.send_rounded, tileText: "Join HDO Channel"),
              SettingTile(
                  tileIcon: Icons.verified,
                  tileText: "Join Telegram Community"),
              SettingTile(
                  tileIcon: Icons.discord, tileText: "Join Discord Community"),
              SettingTile(tileIcon: Icons.feed, tileText: "Feedback"),
              SettingTile(tileIcon: Icons.info, tileText: "About App"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget SettingTile({IconData? tileIcon, String? tileText}) {
  return ListTile(
    leading: Icon(
      tileIcon,
      color: Colors.white,
    ),
    title: Text(
      tileText.toString(),
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
