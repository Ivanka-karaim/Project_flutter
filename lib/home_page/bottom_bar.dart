import 'package:flutter/material.dart';

class CustomBottomNavigateBar extends StatelessWidget {
  const CustomBottomNavigateBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled, color: Colors.black),
          label: "Main",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, color: Colors.black),
            label: "New post"),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined, color: Colors.black),
            label: "Watch"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.black),
            label: "Account"),
      ],
    );
  }
}
