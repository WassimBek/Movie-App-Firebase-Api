import 'package:flutter/material.dart';
import 'package:movie_app_1/Home.dart';
import 'package:movie_app_1/view/Search/SearchBar.dart';
import 'package:movie_app_1/view/setting/SettingsPage.dart';

class RouterPage extends StatefulWidget {
  RouterPage({super.key});
  int selected_index = 0;
  List<Widget> pages = [
    HomePage(),
    const SearchBarr(),
    const SettingPage(),
  ];
  @override
  State<RouterPage> createState() => _RouterPageState();
}

class _RouterPageState extends State<RouterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        currentIndex: widget.selected_index,
        onTap: (index) => {
          setState(() {
            widget.selected_index = index;
          })
        },
        iconSize: 27,
        unselectedItemColor: Color(0xff808080),
        unselectedFontSize: 14,
        unselectedLabelStyle:const TextStyle(
          color: Color(0xffff6348),
          fontFamily: "Poppins",
        ),
        selectedItemColor: Color(0xffff6348),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle:const TextStyle(
          color: Color(0xffff6348),
          fontFamily: "Poppins",
        ),
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      body: widget.pages[widget.selected_index],
    );
  }
}
