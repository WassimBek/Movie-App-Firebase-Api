import 'package:flutter/material.dart';

int selecTed_index = 0;

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 14,
      currentIndex: selecTed_index,
      onTap: (index) => {
        setState(() {
          selecTed_index = index;
        })
      },
      iconSize: 27,
      unselectedItemColor: Color(0xff808080),
      unselectedFontSize: 14,
      unselectedLabelStyle: TextStyle(
        color: Color(0xffff6348),
        fontFamily: "Poppins",
      ),
      selectedItemColor: Color(0xffff6348),
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        color: Color(0xffff6348),
        fontFamily: "Poppins",
      ),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
    );
  }
}
